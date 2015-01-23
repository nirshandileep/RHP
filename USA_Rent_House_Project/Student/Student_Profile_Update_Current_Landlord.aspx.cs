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
using RHP.StudentManagement;

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
            DissableEdit();
            hideHouseDetails();
           // hdLandloadId.Value = string.Empty;
            hdHouseId.Value = string.Empty;
            clearLandload();
            DissableLandlord();
            House_Search.Visible = false;
            DrpHouse.Visible = false;

            if (LandloadEmail.Text.Trim() != "")
            {
                User user_check = new User();
                user_check = RHP.UserManagement.User.SelectUserByEmail("Email", LandloadEmail.Text.Trim().ToLower(), "RoleName", "landlord");

                if (user_check != null)
                {
                   

                    LandloadLabelmessage.Text = "landlord verified for email : " + LandloadEmail.Text.Trim().ToLower();
                    hdLandloadId.Value = user_check.UserId.Value.ToString();

                    LandloadEmail.Text = user_check.PersonalEmail;
                    LandloadFirstName.Text = string.IsNullOrEmpty(user_check.FirstName) ? string.Empty : user_check.FirstName;
                    LandloadMiddleName.Text = string.IsNullOrEmpty(user_check.MiddleName) ? string.Empty : user_check.MiddleName;
                    LandloadLastName.Text = string.IsNullOrEmpty(user_check.LastName) ? string.Empty : user_check.LastName;

                    LandloadMobileArea.Text = string.IsNullOrEmpty(user_check.BestContactNumber) ? string.Empty : user_check.BestContactNumber.Substring(0, 3);
                    LandloadMobile1.Text = string.IsNullOrEmpty(user_check.BestContactNumber) ? string.Empty : user_check.BestContactNumber.Substring(3, 3);
                    LandloadMobile2.Text = string.IsNullOrEmpty(user_check.BestContactNumber) ? string.Empty : user_check.BestContactNumber.Substring(6, 4);

                    ButtonLandload.Visible = true;
                    LoadInitialHouseData();
                    loadHouseDatadata();
                }
                else
                {

                    user_check = new User();
                    if (user_check.IsUserEmailExist(LandloadEmail.Text.Trim().ToLower()))
                    {
                        if (user_check.IsPartialUserEmailExist(LandloadEmail.Text.Trim().ToLower()))
                        {
                            user_check = new User();
                            user_check = RHP.UserManagement.User.SelectUserByEmail("RoleName", "landlord", "Email", LandloadEmail.Text.Trim().ToLower());

                            if (user_check != null)
                            {

                                if (user_check.UserId.HasValue && user_check.IsPartialUser == true)
                                {
                                    LandloadLabelmessage.Text = "landlord verified for email : " + LandloadEmail.Text.Trim().ToLower();
                                    hdLandloadId.Value = user_check.UserId.Value.ToString();

                                    LandloadEmail.Text = user_check.PersonalEmail;
                                    LandloadFirstName.Text = string.IsNullOrEmpty(user_check.FirstName) ? string.Empty : user_check.FirstName;
                                    LandloadMiddleName.Text = string.IsNullOrEmpty(user_check.MiddleName) ? string.Empty : user_check.MiddleName;
                                    LandloadLastName.Text = string.IsNullOrEmpty(user_check.LastName) ? string.Empty : user_check.LastName;

                                    LandloadMobileArea.Text = string.IsNullOrEmpty(user_check.BestContactNumber) ? string.Empty : user_check.BestContactNumber.Substring(0, 3);
                                    LandloadMobile1.Text = string.IsNullOrEmpty(user_check.BestContactNumber) ? string.Empty : user_check.BestContactNumber.Substring(3, 3);
                                    LandloadMobile2.Text = string.IsNullOrEmpty(user_check.BestContactNumber) ? string.Empty : user_check.BestContactNumber.Substring(6, 4);

                                    ButtonLandload.Visible = true;
                                    LoadInitialHouseData();
                                    loadHouseDatadata();
                                }
                                else
                                {
                                    LandloadLabelmessage.Text = "can not find registered landlord for email : " + LandloadEmail.Text.Trim().ToLower() + ". Please enter details to continue..";
                                    ButtonLandload.Visible = true;
                                    LandloadEmail.Text = "";
                                    EnableLandlord();

                                }
                            }
                            else
                            {
                                LandloadLabelmessage.Text = "Email Address : " + LandloadEmail.Text.Trim().ToLower() + ", is already Registed with Student Account. Please enter another email.";

                            }
                        }
                        else
                        {
                            LandloadLabelmessage.Text = "Email Address : " + LandloadEmail.Text.Trim().ToLower() + ", is already Registed with Student Account. Please enter another email.";

                            EnableLandlord();
                        }

                    }
                    else
                    {
                        ButtonLandload.Visible = true;
                        EnableLandlord();
                    }
                }
            }
        }

        private void LoadInitialHouseData()
        {

            //Drpstate 

            if (Drpstate.Items.Count < 1)
            {
                Drpstate.DataSource = RHP.Utility.Generic.GetAll<State>();
                Drpstate.DataTextField = "StateName";
                Drpstate.DataValueField = "StateId";
                Drpstate.DataBind();
                Drpstate.Items.Insert(0, new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));
            }
        }

        public void loadHouseDatadata()
        {
            House_Search.Visible = false;
            DrpHouse.Visible = false;
            DrpHouse.Items.Clear();

                DataSet ds = new DataSet();
                ds = new HouseDAO().SelectAllDataset(Guid.Parse(hdLandloadId.Value));
                ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["HouseId"] };

                if (ds.Tables[0].Rows.Count > 0)
                {
                    LabelRentalAddressMessage.Text = "";
                    House_Search.Visible = true;
                    DrpHouse.Visible = true;
                    showHouseDetails();
                    if (DrpHouse.Items.Count < 1)
                    {
                        DrpHouse.DataSource = ds;
                        DrpHouse.DataTextField = "StreetAddress";
                        DrpHouse.DataValueField = "HouseId";
                        DrpHouse.DataBind();
                        DrpHouse.Items.Insert(0, new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));
                    }
                    else
                    {
 
                    }
                }
                else
                {
                    LabelRentalAddressMessage.Text = "No House Registerd for Landlord, Please Contact Landlord to Add a New House.";
                    LabelRentalAddressMessage.Visible = true;
                    ButtonLandload.Visible = false;
                    ClearHouse();
                   
                }

               

        }

        protected void DrpHouse_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DrpHouse.SelectedItem.Value.ToString() != "-1")
            {
                DissableEdit();
                House _house = House.Select(Guid.Parse(DrpHouse.SelectedItem.Value));

                RentalAddress.Text = _house.StreetAddress;
                RentalCity.Text = _house.City;
                RentalZip.Text = _house.Zip;
                Drpstate.SelectedValue = _house.StateId.HasValue ? _house.StateId.Value.ToString() : "-1";

                hdHouseId.Value = _house.HouseId.Value.ToString();

            }
            else
            {
                hdHouseId.Value = string.Empty;
            }
        }

        public void showHouseDetails()
        {
             HouseDetails.Visible = true;
             RentalAddressMessageId.Visible = true;
             RentalAddressId.Visible = true;
             RentalCityId.Visible = true;
             DrpstateId.Visible = true;
             RentalZipId.Visible = true;
        }

        public void hideHouseDetails()
        {
            HouseDetails.Visible = false;
            RentalAddressMessageId.Visible = false;
            RentalAddressId.Visible = false;
            RentalCityId.Visible = false;
            DrpstateId.Visible = false;
            RentalZipId.Visible = false;
        }

        public void EnableLandlord()
        {
            LandloadFirstName.Enabled = true;
            LandloadMiddleName.Enabled = true;
            LandloadLastName.Enabled = true;
            LandloadMobileArea.Enabled = true;
            LandloadMobile1.Enabled = true;
            LandloadMobile2.Enabled = true;
        }

        public void DissableLandlord()
        {
            LandloadFirstName.Enabled = false;
            LandloadMiddleName.Enabled = false;
            LandloadLastName.Enabled = false;
            LandloadMobileArea.Enabled = false;
            LandloadMobile1.Enabled = false;
            LandloadMobile2.Enabled = false;
        }
        
        public void ClearHouse()
        {
            RentalAddress.Text = "";
            RentalCity.Text = "";
            RentalZip.Text = "";
        }

        public void EnableEdit()
        {
            RentalAddress.Enabled = true;
            RentalCity.Enabled = true;
            RentalZip.Enabled = true;
            Drpstate.Enabled = true;
        }

        public void DissableEdit()
        {
            Drpstate.Enabled = false;
            RentalAddress.Enabled = false;
            RentalCity.Enabled = false;
            RentalZip.Enabled = false;
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

            if (hdHouseId.Value != string.Empty)
            {
                Save_Student_House();
            }
            else
            {
                SaveLandload();
            }
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

                    string strMsgTitle = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " is Requesting you to join with Us.";

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

        public bool Save_Student_House()
        {
            bool result = true;

            User user = new User();
            StudentHouse studentHouse = new StudentHouse();

            user.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            user.HouseId = Guid.Parse(hdHouseId.Value);
            user.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            user.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

            if (user.UpdateHouse())
            {
                
                studentHouse.HouseId = user.HouseId.Value;
                studentHouse.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                studentHouse.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                studentHouse.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

                result = studentHouse.Save();
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

                strMsgContent = strMsgContent + "One of your house Room-mate created account with " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + ", and Request you to join with " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL)  + ",<br/><br/>";

                //strMsgContent = strMsgContent + "Your account details are as follows. <br/><br/>";

                //strMsgContent = strMsgContent + "Your Name:  " + name + " <br/>";

                //strMsgContent = strMsgContent + "Email : " + _user.PersonalEmail + " <br/>";

                //strMsgContent = strMsgContent + "Contact No : " + _user.BestContactNumber + " <br/>";

                //strMsgContent = strMsgContent + "Please keep these details safe for future use.<br/>";

                strMsgContent = strMsgContent + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " is a fast growing online house rating system that support for property owener's and students to connecting with each others.<br/><br/>";

                strMsgContent = strMsgContent + "'<b>Student housing made simple, reliable, most of all accountable..</b>' <br/><br/>";

                strMsgContent = strMsgContent + "if your are happy to join with us, Please click on the link below to create your account. it's 100% free.<br/><br/>";

                strMsgContent = strMsgContent + "<a href=" + RegisterUrl + "> Create Your " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " Account </a>  <br/><br/>";

                strMsgContent = strMsgContent + "If you have any issues with creating your account, please email " + "<a href=\"" + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL) + "?subject=I have issue with creating my account\">  " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL)  + " </a><br/>";

                strMsgContent = strMsgContent + "If you have already Registred, " + "<a href=" + loginpath + "> click here </a> to login to " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL)  + ". <br/>";

                strMsgContent = strMsgContent + "<br /> <strong>This is an automated response to activate your account. Please do not reply to this email.<br /><br />";

                strMsgContent = strMsgContent + "Sincerely yours,<br /> <a href=\"" + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "\">" + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL)  + "</a></strong><br /><br /></div>";

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