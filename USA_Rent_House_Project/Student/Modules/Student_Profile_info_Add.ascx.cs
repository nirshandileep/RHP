using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using RHP.UserManagement;
using RHP.Utility;
using RHP.StudentManagement;
using RHP.Common;
using RHP.SessionManager;


using System.Net;
using System.Net.Mail;
using RHP.CommunicationManagement;


namespace USA_Rent_House_Project.Student.Modules
{
public partial class Student_Profile_info_Add : System.Web.UI.UserControl
{

	public User user = new User();

    RHP.StudentManagement.Student _student;

    public RHP.StudentManagement.Student student
    {
        get
        {
            _student = SessionManager.GetSession<RHP.StudentManagement.Student>(Constants.SESSION_LOGGED_STUDENT);
            if (_student == null)
            {
                _student = new RHP.StudentManagement.Student();
            }
            Session[Constants.SESSION_LOGGED_STUDENT] = _student;
            return _student;
        }
        set
        {
            _student = value;
            Session[Constants.SESSION_LOGGED_STUDENT] = _student;
        }
    }

	protected void Page_Load(object sender, EventArgs e)
	{
		if (!IsPostBack)
		{
				
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Student/Student_Profile.aspx", false);
            }
            else
            {
                string AccessCode = Utility.GetQueryStringValueByKey(Request, "ActivationKey");

                if (AccessCode != string.Empty && AccessCode != null)
                {
                    try
                    {
                        LoadStudent(Guid.Parse(AccessCode));
                    }
                    catch (Exception ex)
                    { }
                }
            }
		}
	}

    public void LoadStudent(Guid AccessCode)
    {

        user = User.Select(AccessCode);

        if (user != null)
        {
            if (user.UserId.HasValue && user.IsPartialUser == true)
            {

                Email.Text = user.PersonalEmail;
                FirstName.Text = string.IsNullOrEmpty(user.FirstName) ? string.Empty : user.FirstName;
                MiddleName.Text = string.IsNullOrEmpty(user.MiddleName) ? string.Empty : user.MiddleName;
                LastName.Text = string.IsNullOrEmpty(user.LastName) ? string.Empty : user.LastName;
            }
        }

    }

    public bool checkPartialEmail()
    {
        bool isEmailEsixt = false;

        User user_check = new User();

        if (user_check.IsUserEmailExist(Email.Text.Trim().ToLower()))
        {
               
                isEmailEsixt = true;
               
        }

        return isEmailEsixt;
    }

	protected void CreateUserButton_Click(object sender, EventArgs e)
	{
		if (Page.IsValid == true)
        {
            ShowPartialUserEmailRequest.Visible = false;
			try
			{

                    
                string AccessCode = Utility.GetQueryStringValueByKey(Request, "ActivationKey");

               if (AccessCode != string.Empty && AccessCode != null)
               {
                    user = User.Select(Guid.Parse(AccessCode));
               }

               bool PartialEmail = false;

              if (user.IsPartialUser == false)
              {
                    PartialEmail = checkPartialEmail();
              }

              if (PartialEmail == false)
              {
                        // need to validate partial email address

                        bool boolMembershipUserCreated = false;

                        user.Email = Email.Text.Trim();
                        user.PersonalEmail = Email.Text.Trim();
                        user.Password = Password.Text.Trim();
                        user.UserName = UserName.Text.Trim();
                        user.Question = Question.Text.Trim();
                        user.Answer = Answer.Text.Trim();

                        aspnet_Roles aspnet_Roles_ = new aspnet_Roles();
                        aspnet_Roles_ = aspnet_Roles.Select("student");

                        user.FirstName = FirstName.Text.Trim();
                        user.MiddleName = MiddleName.Text.Trim();
                        user.LastName = LastName.Text.Trim();
                        user.RoleId = aspnet_Roles_.RoleId;
                        user.ReferralCode = ReferralCode.Text.Trim();

                        object objCreateMembershipUser = new object();

                        bool IsActivate = false;

                        if (SystemConfig.GetValue(Enums.SystemConfig.IsEmailActivation).ToLower() == "true")
                        {
                            IsActivate = false;
                        }
                        else
                        {
                            IsActivate = true;
                        }

                        if (user.IsPartialUser)
                        {
                            objCreateMembershipUser = user.AddMembershipPartialUser(user.UserName, user.Password, user.Email, user.Question, user.Answer, IsActivate, user.UserId.Value, "student");
                        }
                        else
                        {
                            objCreateMembershipUser = user.AddMembershipUser(user.UserName, user.Password, user.Email, user.Question, user.Answer, IsActivate, "student");
                        }

                        bool.TryParse(objCreateMembershipUser.ToString(), out boolMembershipUserCreated);

                        if (boolMembershipUserCreated)
                        {
                            Session[Constants.SESSION_LOGGED_USER] = user;

                            MembershipUser newUser = Membership.GetUser(user.UserName);
                            user.UserId = Guid.Parse(newUser.ProviderUserKey.ToString());
                            user.AspnetUserId = Guid.Parse(newUser.ProviderUserKey.ToString());
                            user.CreatedBy = Guid.Parse(newUser.ProviderUserKey.ToString());
                            user.UpdatedBy = Guid.Parse(newUser.ProviderUserKey.ToString());
                            user.Save();


                            if (SystemConfig.GetValue(Enums.SystemConfig.IsEmailActivation).ToLower() == "true")
                            {
                                string strMsgContent = message((Guid)newUser.ProviderUserKey);
                                string strMsgTitle = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " - Action required for account activation.";

                                int rtn = SendEmail(user.Email, strMsgTitle, strMsgContent);

                                if (rtn == 1)
                                {
                                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Create_Account_Success + "'); window.location = '/Login.aspx?type=s'; }", true);
                                }
                                else
                                {
                                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Sending_Email_Error + "'); window.location = '/Login.aspx?type=s'; }", true);
                                }
                            }
                            else
                            {
                                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Create_Account_Success + "'); window.location = '/Login.aspx?type=s'; }", true);
                            }

                        }
                        else
                        {
                            lblError.Text = objCreateMembershipUser.ToString();
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Profile_Create_Unsuccess + " - " + objCreateMembershipUser.ToString() + "'); }", true);
                        }
                }
                else
                {
                    
                        User user_check = new User();

                        if (user_check.IsPartialUserEmailExist(Email.Text.Trim().ToLower()))
                        {
                            ShowfullRegistration.Visible = false;
                            ShowPartialUserEmailRequest.Visible = true;
                            lblpartialuserEmail.Text = Email.Text.Trim();
                            lblpartialuserEmail2.Text = Email.Text.Trim();
                        }
                        else
                        {
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Profile_Create_Unsuccess + " - " + Messages.EmailAddressExist + "'); }", true);
                            ShowPartialUserEmailRequest.Visible = false;
                            ShowfullRegistration.Visible = true;
                        }
                }

					
			}
			catch (Exception ex)
			{
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Profile_Create_Unsuccess +  "'); }", true);
                   
                throw ex;//new Exception("student Profile info : " + ex.ToString());
			}
		}
		else
		{
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Validation_Fail + "'); }", true);
        }
	}

    protected int SendEmail(string To, string Subject, string Body)
    {

        try
        {
            string host = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_HOST);
            string fromEmail = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL);

            EmailManager emailManager = new EmailManager(host, fromEmail);

            //Use the parameters where needed, if not required use empty
            emailManager.SendEmail(To, Subject, string.Empty, fromEmail, string.Empty, Body);

            return 1;
        }
        catch (Exception ex)
        {
            return 0;
        }

    }

    private string message(Guid ActivationKey)
    {
        string strMsgContent = string.Empty;

        try
        {
            string verifyUrl = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "Email_Verification.aspx?ActivationKey=" + ActivationKey;
            strMsgContent = "<div style=\"border:solid 1px #efefef;\"><div style=\"width:800;border:solid " +
                                "1px #efefef;font-weight:bold; font-family:Verdana;font-size:12px; text-align:left;" +
                                " background-color:#efefef;\" >  <span >" + " " + user.UserName + ", " + "</span></div>" +
                                "<br />";

            string loginpath = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "Login.aspx?type=s";
            string siteURL = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL);

            strMsgContent = strMsgContent + "Thank you for creating an account with <a href=" + siteURL + ">www.ratestudenthousing.com</a>, Your account details are as follows. <br/><br/>";

            strMsgContent = strMsgContent + "User Name:  " + user.UserName + " <br/>";

            strMsgContent = strMsgContent + "Email : " + user.Email + " <br/>";

            strMsgContent = strMsgContent + "Secret Question : " + user.Question + " <br/>";

            strMsgContent = strMsgContent + "Please keep these details safe for future use.<br/>";

            strMsgContent = strMsgContent + "If you forget or loose your password, you can reset and obtain a new password by using the secret question.<br/><br/>";

            strMsgContent = strMsgContent + "<b>Please click on the link below to activate your account.</b><br/>";

            strMsgContent = strMsgContent + "<a href=" + verifyUrl + ">Verify Your Email Account  </a>  <br/><br/>";

            strMsgContent = strMsgContent + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " is a platform, where students and landlords can rate, review, and comment on each other. As well as find and connect with other student renters and landlords using our search engine. <br/><br/>";

            strMsgContent = strMsgContent + "If you have any issues with activating your account, please email " + "<a href=\"mailto:" + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL) + "?subject=I have issue with activating my account\">  " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL) + " </a><br/>";

            strMsgContent = strMsgContent + "If you have already activated your account, " + "<a href=" + loginpath + "> click here </a> to login to " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + ". <br/>";

            strMsgContent = strMsgContent + "<br /> <strong>This is an automated response to activate your account. Please do not reply to this email.<br /><br />";

            strMsgContent = strMsgContent + "From the Founder and CEO/President of<br /> <a href=\"" + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "\">" + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "</a></strong><br /><br /></div>";

            strMsgContent = strMsgContent + "</br><span style=\"color:#818181; font-style:italic; font-size:12px;\">This email is confidential and is intended only for the individual named. Although reasonable precautions have been taken to ensure no viruses are present in this email, " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " do not warrant that this e-mail is free from viruses or other corruptions and is not liable to the recipient or any other party should any virus or other corruption be present in this e-mail. If you have received this email in error please notify the sender.</span>";

        }
        catch (Exception ex)
        {
            strMsgContent = string.Empty;

        }
        return strMsgContent;
    }

    protected void BtnResentRequest_Click(object sender, EventArgs e)
    {
        User _user = new User();

        string type = "";

        _user = User.SelectUserByEmail("RoleName", "landlord", "Email", Email.Text.Trim().ToLower());
        
        if (_user != null)
        {
            type = "l";
        }
        else
        {
            _user = User.SelectUserByEmail("RoleName", "student", "Email", Email.Text.Trim().ToLower());
            
            if (_user != null)
            {
                type = "s";
            }
        }

        if (_user != null)
        {
            if (_user.UserId.HasValue)
            {
                string strMsgContent = PartialUserRequest(_user, type);

                string strMsgTitle = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " is Requesting you to join with Us.";

                int rtn = SendEmail(_user.PersonalEmail, strMsgTitle, strMsgContent);

                 if (rtn == 1)
                 {
                     Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Request_Email_success + "'); window.location = '/Login.aspx?type=s'; }", true);

                 }
                 else
                 {
                     Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Sending_Email_Error + "'); window.location = '/Login.aspx?type=s'; }", true);

                 }
            }
        }
    }

    private string PartialUserRequest(User _user, string type)
    {
        string strMsgContent = string.Empty;

        try
        {
            string name = _user.FirstName + " " + _user.MiddleName + " " + _user.LastName;

            string RegisterUrl = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "Land_load/Land_load_Profile_Add.aspx?ActivationKey=" + _user.UserId;
            strMsgContent = "<div style=\"border:solid 1px #efefef;\"><div style=\"width:800;border:solid " +
                                "1px #efefef;font-weight:bold; font-family:Verdana;font-size:12px; text-align:left;" +
                                " background-color:#efefef;\" >  <strong>Dear</strong>  <span >" + name + ", " + "</span></div>" +
                                "<br />";

            string loginpath = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "Login.aspx?type=" + type;

            strMsgContent = strMsgContent + "One of your house Room-mate created account with " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + ", and Request you to join with " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + ",<br/><br/>";

            

            strMsgContent = strMsgContent + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " is a fast growing online house rating system that support for property owener's and students to connecting with each others.<br/><br/>";

            strMsgContent = strMsgContent + "'<b>Student housing made simple, reliable, most of all accountable..</b>' <br/><br/>";

            strMsgContent = strMsgContent + "if your are happy to join with us, Please click on the link below to create your account. it's 100% free.<br/><br/>";

            strMsgContent = strMsgContent + "<a href=" + RegisterUrl + "> Create Your " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " Account </a>  <br/><br/>";

            strMsgContent = strMsgContent + "If you have any issues with creating your account, please email " + "<a href=\"mailto:" + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL) + "?subject=I have issue with creating my account\">  " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL) + " </a><br/>";

            strMsgContent = strMsgContent + "If you have already Registred, " + "<a href=" + loginpath + "> click here </a> to login to " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + ". <br/>";

            strMsgContent = strMsgContent + "<br /> <strong>This is an automated response to activate your account. Please do not reply to this email.<br /><br />";

            strMsgContent = strMsgContent + "Sincerely yours,<br /> <a href=\"" + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "\">" + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "</a></strong><br /><br /></div>";

            strMsgContent = strMsgContent + "</br><span style=\"color:#818181; font-style:italic; font-size:12px;\">This email is confidential and is intended only for the individual named. Although reasonable precautions have been taken to ensure no viruses are present in this email, " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " do not warrant that this e-mail is free from viruses or other corruptions and is not liable to the recipient or any other party should any virus or other corruption be present in this e-mail. If you have received this email in error please notify the sender.</span>";

        }
        catch (Exception ex)
        {
            strMsgContent = string.Empty;

        }
        return strMsgContent;
    }


}
}