using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using RHP.LandlordManagement;
using System.Web.Security;
using RHP.Utility;
using RHP.CommunicationManagement;
using System.Data;
using RHP.Common;

namespace USA_Rent_House_Project.Student
{
    public partial class Student_Profile_Update_Current_Landlord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadUserData();
            }
        }

        public void LoadUserData()
        {
            UserDAO userDAO = new UserDAO();

            User user = RHP.UserManagement.User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

            if (user.HouseId != null)
            {
                
                    ViewCurrentHouseButton.Visible = true;
                    UpdateCurrentHouseButton.Visible = true;
                    LeaveCurrentHouseButton.Visible = true;

                    LoadLandlordData(user);

                    //if ((user.UserId.HasValue && user.IsPartialUser == true) && (user.AspnetUserId.HasValue == null || user.AspnetUserId == Guid.Empty))
                    //{
                    //}
                    //else
                    //{
                    //    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.CurrentHouseNotPartialUser + "'); window.location = '/Student/Student_Profile_Update_Current_House.aspx';}", true);

                    //}
            }
            else
            {
                CreateCurrentHouseButton.Visible = true;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.CurrentHouseNoRecords + "'); window.location = '/Student/Student_Profile_Current_House.aspx';}", true);

            }
        }
 
        public void LoadLandlordData(User user_)
        {
            UserDAO userDAO = new UserDAO();
           
            if (user_.HouseId != null)
            {
                DataSet LandlordData = userDAO.SelectLandlordByHouseId(user_.HouseId.Value);

                if (LandlordData != null && LandlordData.Tables[0].Rows.Count > 0)
                {
                    
                    string IspartialUser = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["IsPartialUser"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["IsPartialUser"].ToString().Trim();
                    string AspnetUserId = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["AspnetUserId"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["AspnetUserId"].ToString().Trim();

                    if (IspartialUser.ToLower() == "true" && (AspnetUserId == "" || AspnetUserId == string.Empty))
                    {
                        hdLandloadId.Value = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["LandlordId"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["LandlordId"].ToString().Trim();
                        string FirstName = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["FirstName"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["FirstName"].ToString().Trim();
                        string MiddleName = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["MiddleName"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["MiddleName"].ToString().Trim();
                        string LastName = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["LastName"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["LastName"].ToString().Trim();

                        lbName.Text = FirstName + " " + MiddleName + " " + LastName;

                        lbEmail.Text = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["PersonalEmail"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["PersonalEmail"].ToString().Trim();
                        lbMobile.Text = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["BestContactNumber"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["BestContactNumber"].ToString().Trim();

                        LandloadEmail.Text = lbEmail.Text;
                        LandloadFirstName.Text = FirstName;
                        LandloadMiddleName.Text = MiddleName;
                        LandloadLastName.Text = LastName;

                        LandloadMobileArea.Text = string.IsNullOrEmpty(lbMobile.Text) ? string.Empty : lbMobile.Text.Substring(0, 3);
                        LandloadMobile1.Text = string.IsNullOrEmpty(lbMobile.Text) ? string.Empty : lbMobile.Text.Substring(3, 3);
                        LandloadMobile2.Text = string.IsNullOrEmpty(lbMobile.Text) ? string.Empty : lbMobile.Text.Substring(6, 4);

                        LandloadEdit.Visible = true;
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.CurrentHouseNotPartialUser + "'); window.location = '/Student/Student_Profile_Update_Current_House.aspx';}", true);

                    }
                }
            }
        }

        public void ResetStatus()
        {
            hdLandloadinfoStatus.Value = "";
            LandloadEdit.Visible = false;
        }

        protected void ButtonVerifyLandload_Click(object sender, EventArgs e)
        {
            LandloadLabelmessage.Text = "";

            if (LandloadEmail.Text.Trim() != "")
            {
                User user_check = new User();
                if (user_check.IsUserEmailExist(LandloadEmail.Text.Trim().ToLower()))
                {
                    LandloadFirstName.Enabled = false;
                    LandloadMiddleName.Enabled = false;
                    LandloadLastName.Enabled = false;
                    LandloadMobileArea.Enabled = false;
                    LandloadMobile1.Enabled = false;
                    LandloadMobile2.Enabled = false;
                    LandloadLabelmessage.Text = "Email Address : " + LandloadEmail.Text.Trim().ToLower() + ", is already Registed with a Account. Please enter another email.";
                }
                else
                {
                    if (user_check.IsPartialUserEmailExist(LandloadEmail.Text.Trim().ToLower()))
                    {
                        LandloadFirstName.Enabled = false;
                        LandloadMiddleName.Enabled = false;
                        LandloadLastName.Enabled = false;
                        LandloadMobileArea.Enabled = false;
                        LandloadMobile1.Enabled = false;
                        LandloadMobile2.Enabled = false;
                        LandloadLabelmessage.Text = "Email Address : " + LandloadEmail.Text.Trim().ToLower() + ", is already Registed with Partial Account. Please enter another email.";

                    }
                    else
                    {
                       
                        clearLandload();

                        LandloadFirstName.Enabled = true;
                        LandloadMiddleName.Enabled = true;
                        LandloadLastName.Enabled = true;
                        LandloadMobileArea.Enabled = true;
                        LandloadMobile1.Enabled = true;
                        LandloadMobile2.Enabled = true;
                    }

                   
                }

                //User user_ = RHP.UserManagement.User.SelectUserByEmail("Email", LandloadEmail.Text.Trim().ToLower(), "RoleName", "landlord");
                //if (user_ != null)
                //{
                //    LandloadLabelmessage.Text = "landload verified for email : " + LandloadEmail.Text.Trim().ToLower();

                //    LandloadFirstName.Text = user_.FirstName;
                //    LandloadMiddleName.Text = user_.MiddleName;
                //    LandloadLastName.Text = user_.LastName;

                //    LandloadMobileArea.Text = string.IsNullOrEmpty(user_.BestContactNumber) ? string.Empty : user_.BestContactNumber.Substring(0, 3);
                //    LandloadMobile1.Text = string.IsNullOrEmpty(user_.BestContactNumber) ? string.Empty : user_.BestContactNumber.Substring(3, 3);
                //    LandloadMobile2.Text = string.IsNullOrEmpty(user_.BestContactNumber) ? string.Empty : user_.BestContactNumber.Substring(6, 4);

                //}
                //else
                //{

                //    LandloadFirstName.Text = "";
                //    LandloadMiddleName.Text = "";
                //    LandloadLastName.Text = "";
                //    LandloadMobileArea.Text = "";
                //    LandloadMobile1.Text = "";
                //    LandloadMobile2.Text = "";

                //    User user_check = new User();

                //    if (user_check.IsUserEmailExist(LandloadEmail.Text.Trim().ToLower()))
                //    {
                //        LandloadFirstName.Enabled = false;
                //        LandloadMiddleName.Enabled = false;
                //        LandloadLastName.Enabled = false;
                //        LandloadMobileArea.Enabled = false;
                //        LandloadMobile1.Enabled = false;
                //        LandloadMobile2.Enabled = false;

                //        if (user_check.IsPartialUserEmailExist(LandloadEmail.Text.Trim().ToLower()))
                //        {
                //            LandloadLabelmessage.Text = "Email Address : " + LandloadEmail.Text.Trim().ToLower() + ", is already Registed with Partial Account. Please enter another email.";

                //            //usp_UserSelectByRoleName

                //            user_check = RHP.UserManagement.User.SelectUserByEmail("RoleName", "landlord", "Email", LandloadEmail.Text.Trim().ToLower());

                //            if (user_check != null)
                //            {
                //                if ((user_check.UserId.HasValue && user_check.IsPartialUser == true) && (user_check.AspnetUserId.HasValue == null || user_check.AspnetUserId == Guid.Empty))
                //                {
                //                    LandloadLabelmessage.Text = "landload verified for email : " + LandloadEmail.Text.Trim().ToLower();

                //                    LandloadEmail.Text = user_check.PersonalEmail;
                //                    LandloadFirstName.Text = string.IsNullOrEmpty(user_check.FirstName) ? string.Empty : user_check.FirstName;
                //                    LandloadMiddleName.Text = string.IsNullOrEmpty(user_check.MiddleName) ? string.Empty : user_check.MiddleName;
                //                    LandloadLastName.Text = string.IsNullOrEmpty(user_check.LastName) ? string.Empty : user_check.LastName;

                //                    LandloadMobileArea.Text = string.IsNullOrEmpty(user_check.BestContactNumber) ? string.Empty : user_check.BestContactNumber.Substring(0, 3);
                //                    LandloadMobile1.Text = string.IsNullOrEmpty(user_check.BestContactNumber) ? string.Empty : user_check.BestContactNumber.Substring(3, 3);
                //                    LandloadMobile2.Text = string.IsNullOrEmpty(user_check.BestContactNumber) ? string.Empty : user_check.BestContactNumber.Substring(6, 4);
                //                }
                //            }

                //            else
                //            {
                //                LandloadLabelmessage.Text = "Email Address : " + LandloadEmail.Text.Trim().ToLower() + ", is already Registed with another Account. Please enter another email.";
                //            }
                //        }
                //        else
                //        {
                //            LandloadLabelmessage.Text = "Email Address : " + LandloadEmail.Text.Trim().ToLower() + ", is already Registed with another Account. Please enter another email.";
                //        }
                //    }
                //    else
                //    {
                //        LandloadLabelmessage.Text = "can not find registered landload for email : " + LandloadEmail.Text.Trim().ToLower() + ". Please enter details to continue..";

                //        LandloadFirstName.Enabled = true;
                //        LandloadMiddleName.Enabled = true;
                //        LandloadLastName.Enabled = true;
                //        LandloadMobileArea.Enabled = true;
                //        LandloadMobile1.Enabled = true;
                //        LandloadMobile2.Enabled = true;
                //    }


                //}
            }
            else
            {
                clearLandload();

            }
        }

        public void clearLandload()
        {
           
            LandloadFirstName.Text = "";
            LandloadMiddleName.Text = "";
            LandloadLastName.Text = "";
            LandloadMobileArea.Text = "";
            LandloadMobile1.Text = "";
            LandloadMobile2.Text = "";
        }
  
        protected void ButtonLandload_Click(object sender, EventArgs e)
        {
            SaveLandload();
        }

        public bool SaveLandload()
        {
            bool result = true;
            aspnet_Roles aspnet_Roles_ = new aspnet_Roles();

            Landlord landload = new Landlord();

            aspnet_Roles_ = aspnet_Roles.Select("landlord");

            User Landlorduser = new User();
            if (hdLandloadId.Value != null && hdLandloadId.Value != string.Empty)
            {

                Landlorduser.UserId = Guid.Parse(hdLandloadId.Value);
                Landlorduser.PersonalEmail = LandloadEmail.Text.Trim();
                Landlorduser.FirstName = LandloadFirstName.Text.Trim();
                Landlorduser.MiddleName = LandloadMiddleName.Text.Trim();
                Landlorduser.LastName = LandloadLastName.Text.Trim();
                Landlorduser.BestContactNumber = LandloadMobileArea.Text.Trim() + LandloadMobile1.Text.Trim() + LandloadMobile2.Text.Trim();//Mobile.Text.Trim();
                Landlorduser.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                Landlorduser.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                Landlorduser.IsPartialUser = true;
                Landlorduser.RoleId = aspnet_Roles_.RoleId;
                Landlorduser.UpdatedDate = DateTime.Now;

                if (Landlorduser.Save())
                {
                    landload.user = Landlorduser;
                    landload.LandlordId = Landlorduser.UserId.HasValue ? Landlorduser.UserId.Value : Landlorduser.UserId.Value;
                    landload.LandlordName = Landlorduser.FirstName + " " + Landlorduser.MiddleName + " " + Landlorduser.LastName;

                    landload.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    landload.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    result = landload.Save();

                    string strMsgContent = Landloadmessage(Landlorduser.UserId.Value, Landlorduser);

                    string strMsgTitle = "www.ratemystudenthome.com is Requesting you to join with Us.";

                    int rtn = LandloadSendEmail(Landlorduser.PersonalEmail, strMsgTitle, strMsgContent);


                    if (rtn == 1)
                    {
                    }
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Student/Student_Profile_Update_Current_House.aspx';}", true);

                }

            }
            else
            {
                LandloadLabelmessage.Text = "Landlord Details cannot saved.Please try again!";
                // no  Landload id
            }
            return result;
        }

        protected int LandloadSendEmail(string To, string Subject, string Body)
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

        private string Landloadmessage(Guid ActivationKey, User _user)
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

    }
}