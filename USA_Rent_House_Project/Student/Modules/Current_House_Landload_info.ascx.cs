using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;
using RHP.Utility;
using System.Web.Security;
using RHP.LandlordManagement;
using System.Data;
using RHP.CommunicationManagement;



namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Current_House_Landload_info : System.Web.UI.UserControl
    {
        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {
                    _user = new User(); // _user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                }
                else
                {
                   
                }
                Session[Constants.SESSION_LOGGED_USER] = _user;
                return _user;
            }
            set
            {
                _user = value;
                Session[Constants.SESSION_LOGGED_USER] = _user;
            }
        }

        public Landlord landload = new Landlord();

        public Guid? LandlordId
        {
            get
            {
                if (string.IsNullOrEmpty(hdnLandlordId.Value.Trim()))
                {
                    return null;
                }
                else
                {
                    return Guid.Parse(hdnLandlordId.Value.Trim());
                }
            }
            set
            {
                if (value.HasValue)
                {
                    hdnLandlordId.Value = value.Value.ToString();
                }
                else
                {
                    hdnLandlordId.Value = string.Empty;
                }

            }
        }

        public delegate void PassLandlordIDToParent(Guid landlordId);

        public event PassLandlordIDToParent PassID;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    LoadUserData();
                }
            }
        }

        public void LoadUserData()
        {
            // user data
            

            UserDAO userDAO = new UserDAO();

            user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

            if (user.HouseId != null)
            {
               
                Labelmessage.Text = "";//Current landload Details";
                DataSet LandlordData = userDAO.SelectLandlordByHouseId(user.HouseId.Value);

       
                if(LandlordData != null && LandlordData.Tables[0].Rows.Count > 0)
                {
                    PassID(Guid.Parse(LandlordData.Tables[0].Rows[0]["UserId"].ToString().Trim()));

                    ButtonVerify.Visible = false;
                    Email.Enabled = false;
                    FirstName.Text = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["FirstName"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["FirstName"].ToString().Trim();
                    MiddleName.Text = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["MiddleName"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["MiddleName"].ToString().Trim();
                    LastName.Text = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["LastName"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["LastName"].ToString().Trim();
                    Email.Text = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["PersonalEmail"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["PersonalEmail"].ToString().Trim();
                   // Mobile.Text = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["BestContactNumber"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["BestContactNumber"].ToString().Trim();

                    MobileArea.Text = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["BestContactNumber"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["BestContactNumber"].ToString().Substring(0, 3);
                    Mobile1.Text = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["BestContactNumber"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["BestContactNumber"].ToString().Substring(3, 3);
                    Mobile2.Text = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["BestContactNumber"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["BestContactNumber"].ToString().Substring(6, 4);
                
                }
               
            }
        }

        public bool Save()
        {
            bool result = true;
            aspnet_Roles aspnet_Roles_ = new aspnet_Roles();

            aspnet_Roles_ = aspnet_Roles.Select("landlord");

            User Landlorduser = new User();
            if (LandlordId == null)
            {

                Landlorduser.UserId = Guid.NewGuid();
                Landlorduser.PersonalEmail = Email.Text.Trim();
                Landlorduser.FirstName = FirstName.Text.Trim();
                Landlorduser.MiddleName = MiddleName.Text.Trim();
                Landlorduser.LastName = LastName.Text.Trim();
                Landlorduser.BestContactNumber = MobileArea.Text.Trim() + Mobile1.Text.Trim() + Mobile2.Text.Trim();//Mobile.Text.Trim();
                Landlorduser.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                Landlorduser.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                Landlorduser.IsPartialUser = true;
                Landlorduser.RoleId = aspnet_Roles_.RoleId;

                if (Landlorduser.Save())
                {
                    landload.user = Landlorduser;
                    landload.LandlordId = Landlorduser.UserId.HasValue ? Landlorduser.UserId.Value : Landlorduser.UserId.Value;
                    LandlordId = landload.LandlordId;//setting value of property
                    landload.LandlordName = Landlorduser.FirstName + " " + Landlorduser.MiddleName + " " + Landlorduser.LastName;
             
                    landload.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    landload.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    result = landload.Save();

                    string strMsgContent = message(Landlorduser.UserId.Value,Landlorduser);

                    string strMsgTitle = "www.ratemystudenthome.com is Requesting you to join with Us.";

                     int rtn = SendEmail(Landlorduser.PersonalEmail, strMsgTitle, strMsgContent);

                    if (rtn == 1)
                    {
                    }
                }

                LandlordId = Landlorduser.UserId;
            }
            else
            {
               
                // Landload already registerd
            }
            return result;
        }

        protected void ButtonVerify_Click(object sender, EventArgs e)
        {
            Labelmessage.Text = "";
            if (Email.Text.Trim() != "")
            {
                User user_ = User.SelectUserByEmail("Email", Email.Text.Trim().ToLower(), "RoleName", "landlord");

                if (user_ != null)
                {
                    Labelmessage.Text = "landload verified for email : " + Email.Text.Trim().ToLower();
                    LandlordId = user_.UserId;

                    //Pass the landlordId back to the main page
                    PassID(user_.UserId.Value);

                   // Email.Text = user_.PersonalEmail;
                    FirstName.Text = user_.FirstName;
                    MiddleName.Text = user_.MiddleName;
                    LastName.Text = user_.LastName;

                    MobileArea.Text = string.IsNullOrEmpty(user_.BestContactNumber) ? string.Empty : user_.BestContactNumber.Substring(0, 3);
                    Mobile1.Text = string.IsNullOrEmpty(user_.BestContactNumber) ? string.Empty : user_.BestContactNumber.Substring(3, 3);
                    Mobile2.Text = string.IsNullOrEmpty(user_.BestContactNumber) ? string.Empty : user_.BestContactNumber.Substring(6, 4);
          

                    //Mobile.Text = user_.BestContactNumber;
                }
                else
                {
                    Labelmessage.Text = "can not find registered landload for email : " + Email.Text.Trim().ToLower() +". Please enter details to continue..";
                    FirstName.Text = "";
                    MiddleName.Text = "";
                    LastName.Text = "";
                    MobileArea.Text = "";
                    Mobile1.Text = "";
                    Mobile2.Text = "";
                   // Mobile.Text = "";
                    FirstName.Enabled = true;
                    MiddleName.Enabled = true;
                    LastName.Enabled = true;
                    MobileArea.Enabled = true;
                    Mobile1.Enabled = true;
                    Mobile2.Enabled = true;
                }
            }
            else
            {
                clear();

            }
        }

        public void clear()
        {
            Labelmessage.Text = "";
            Email.Text = "";
            FirstName.Text = "";
            MiddleName.Text = "";
            LastName.Text = "";
            MobileArea.Text = "";
            Mobile1.Text = "";
            Mobile2.Text = "";
            FirstName.Enabled = false;
            MiddleName.Enabled = false;
            LastName.Enabled = false;
            MobileArea.Enabled = true;
            Mobile1.Enabled = true;
            Mobile2.Enabled = true;
        }

        public bool Next()
        {
            return true;
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


        private string message(Guid ActivationKey, User _user)
        {
            string strMsgContent = string.Empty;

            try
            {
                string name = _user.FirstName + " " + _user.MiddleName + " " + _user.LastName;

                string RegisterUrl = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "Land_load/Land_load_Profile_Add.aspx?ActivationKey=" + ActivationKey;
                strMsgContent = "<div style=\"border:solid 1px #efefef;\"><div style=\"width:800;border:solid " +
                                    "1px #efefef;font-weight:bold; font-family:Verdana;font-size:12px; text-align:left;" +
                                    " background-color:#efefef;\" >  <strong>Dear</strong>  <span >" + name + ", " + "</span></div>" +
                                    "<br />";

                string loginpath = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "Login.aspx?type=l";

                strMsgContent = strMsgContent + "One of your house Room-mate created account with ratemystudenthome.com, and Request you to join with ratemystudenthome.com,<br/><br/>";

                //strMsgContent = strMsgContent + "Your account details are as follows. <br/><br/>";

                //strMsgContent = strMsgContent + "Your Name:  " + name + " <br/>";

                //strMsgContent = strMsgContent + "Email : " + _user.PersonalEmail + " <br/>";

                //strMsgContent = strMsgContent + "Contact No : " + _user.BestContactNumber + " <br/>";

                //strMsgContent = strMsgContent + "Please keep these details safe for future use.<br/>";

                strMsgContent = strMsgContent + "ratemystudenthome.com is a fast growing online house rating system that support for property owener's and students to connecting with each others.<br/><br/>";

                strMsgContent = strMsgContent + "'<b>Student housing made simple, reliable, most of all accountable..</b>' <br/><br/>";

                strMsgContent = strMsgContent + "if your are happy to join with us, Please click on the link below to create your account. it's 100% free.<br/><br/>";

                strMsgContent = strMsgContent + "<a href=" + RegisterUrl + "> Create Your www.ratemystudenthome.com Account </a>  <br/><br/>";

                strMsgContent = strMsgContent + "If you have any issues with creating your account, please email " + "<a href=\"mailto:support@ratemystudenthome.com?subject=I have issue with creating my account\">  support@ratemystudenthome.com </a><br/>";

                strMsgContent = strMsgContent + "If you have already Registred, " + "<a href=" + loginpath + "> click here </a> to login to ratemystudenthome.com. <br/>";

                strMsgContent = strMsgContent + "<br /> <strong>This is an automated response to activate your account. Please do not reply to this email.<br /><br />";

                strMsgContent = strMsgContent + "Sincerely yours,<br /> <a href=\"www.ratemystudenthome.com\">ratemystudenthome.com</a></strong><br /><br /></div>";

                strMsgContent = strMsgContent + "</br><span style=\"color:#818181; font-style:italic; font-size:12px;\">This email is confidential and is intended only for the individual named. Although reasonable precautions have been taken to ensure no viruses are present in this email, ratemystudenthome.com do not warrant that this e-mail is free from viruses or other corruptions and is not liable to the recipient or any other party should any virus or other corruption be present in this e-mail. If you have received this email in error please notify the sender.</span>";

            }
            catch (Exception ex)
            {
                strMsgContent = string.Empty;

            }
            return strMsgContent;
        }


        protected void ButtonLeaveHouse_Click1(object sender, EventArgs e)
        {
            //user.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            //user.HouseId = null;
            //if (user.UpdateHouse())
            //{
            //    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Delete_success + "'); window.location = '/Student/Student_Profile.aspx';}", true);
            //}
            //else
            //{
            //    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Delete_Unsuccess + "'); window.location = '/Student/Student_Profile.aspx';}", true);
            //}
        }

        public void OnConfirm(object sender, EventArgs e)
        {
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                user.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                user.HouseId = null;
                if (user.UpdateHouse())
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Delete_success + "'); window.location = '/Student/Student_Profile.aspx';}", true);
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Delete_Unsuccess + "'); window.location = '/Student/Student_Profile.aspx';}", true);
                }

               // this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You clicked YES!')", true);
            }
            else
            {
               // this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You clicked NO!')", true);
            }
        }


    }
}