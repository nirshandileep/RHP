using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.StudentManagement;
using RHP.LandlordManagement;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;
using System.Collections;
using System.Data;
using System.Web.Security;
using RHP.Utility;
using RHP.CommunicationManagement;
using RHP.Photos;

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class Current_Students_Add : System.Web.UI.UserControl
    {


        StudentHouse studentHouse = new StudentHouse();
        House house = new House();

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

        public Guid? HouseId
        {
            get
            {
                if (string.IsNullOrEmpty(hdHouseId.Value.Trim()))
                {
                    return null;
                }
                else
                {
                    return Guid.Parse(hdHouseId.Value.Trim());
                }
            }
            set
            {
                if (value.HasValue)
                {
                    hdHouseId.Value = value.Value.ToString();
                }
                else
                {
                    hdHouseId.Value = string.Empty;
                }

            }
        }

        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {
                    _user = new User(); //
                    
                    _user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
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


        protected void Page_Load(object sender, EventArgs e)
        {

            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

                if (AccessCode != string.Empty && AccessCode != null)
                {
                    try
                    {
                        hdHouseId.Value = AccessCode;
                    }
                    catch (Exception ex)
                    { }
                }

                LoadStudent();

                if (hdroommatestatus.Value == "Add")
                {
                    RoommateAdd.Visible = true;
                }
                else if (hdroommatestatus.Value == "Edit")
                {
                    RoommateAdd.Visible = true;
                    CurrentDetails.Visible = true;
                }
            }

          
        }

        public void LoadStudent()
        {


            if (HouseId.HasValue)
            {
               // HouseId = Guid.Parse("8313D02D-FA75-474A-A93B-0EFD3B817A88");

                List<User> userList = User.SelectUserByHouseId("HouseId", HouseId.Value, "RoleName", "student");

                DataListStudentList.DataSource = userList;
                DataListStudentList.DataBind();
            }
        }


        protected void ItemDataBound(object sender, DataListItemEventArgs e)
        {
            //Photo photo = new Photo();
            //HiddenField HiddenField_ = (HiddenField)e.Item.FindControl("hdUserId");

            //HyperLink Image_ = (HyperLink)e.Item.FindControl("HyperLinkimage");

            //Image_.ImageUrl = photo.LoadImage(Guid.Parse(HiddenField_.Value.ToString()), Enums.PhotoCategory.Profile_Picture);

            Photo photo = new Photo();
            HiddenField HiddenField_ = (HiddenField)e.Item.FindControl("hdUserId");

            HyperLink Image_ = (HyperLink)e.Item.FindControl("HyperLinkimage");

            Image_.ImageUrl = photo.LoadImage(Guid.Parse(HiddenField_.Value.ToString()), Enums.PhotoCategory.Profile_Picture);

            HiddenField HdIsPartialUser = (HiddenField)e.Item.FindControl("hdIsPartialUser");
            HiddenField hdAspnetUserId_ = (HiddenField)e.Item.FindControl("hdAspnetUserId");
            LinkButton EditPartialUser_ = (LinkButton)e.Item.FindControl("EditPartialUser");

            bool IsPartialUser = bool.Parse(HdIsPartialUser.Value);

            if (IsPartialUser == true && (hdAspnetUserId_.Value == string.Empty || hdAspnetUserId_.Value == null))
            {
                EditPartialUser_.Visible = true;
            }
            else
            {
                EditPartialUser_.Visible = false;
            }
        }

        protected void EditPartialUser_Command(object sender, CommandEventArgs args)
        {
            string userid = (string)args.CommandArgument;
            hdroommatestatus.Value = "Edit";
            CurrentDetails.Visible = true;
            RoomMateInfoHeader.Text = "Room-Mate Info - Edit";
            RHP.UserManagement.User _user = new RHP.UserManagement.User();
            hdUserID.Value = userid;

            SaveNewStudent.Visible = false;
            SaveEditStudent.Visible = true;

            _user = RHP.UserManagement.User.Select(Guid.Parse(userid));

            if (_user.IsPartialUser == true && (_user.AspnetUserId == null || _user.AspnetUserId == Guid.Empty))
            {

                EditPartialUserName.Text = (string.IsNullOrEmpty(_user.FirstName) ? string.Empty : _user.FirstName) + " " + (string.IsNullOrEmpty(_user.LastName) ? string.Empty : _user.LastName);
                hdEditPartialUserName.Value = EditPartialUserName.Text;

                EditPartialUserEmail.Text = string.IsNullOrEmpty(_user.PersonalEmail) ? string.Empty : _user.PersonalEmail;
                hdEditPartialUserEmail.Value = EditPartialUserEmail.Text;

                EditPartialUserCurrent.Text = string.IsNullOrEmpty(_user.BestContactNumber) ? string.Empty : _user.BestContactNumber;
                hdEditPartialUserCurrent.Value = EditPartialUserCurrent.Text;

                RoommateAdd.Visible = true;

                Email.Text = string.IsNullOrEmpty(_user.PersonalEmail) ? string.Empty : _user.PersonalEmail;
                FirstName.Text = string.IsNullOrEmpty(_user.FirstName) ? string.Empty : _user.FirstName;
                MiddleName.Text = string.IsNullOrEmpty(_user.MiddleName) ? string.Empty : _user.MiddleName;
                LastName.Text = string.IsNullOrEmpty(_user.LastName) ? string.Empty : _user.LastName;

                MobileArea.Text = string.IsNullOrEmpty(_user.BestContactNumber) ? string.Empty : _user.BestContactNumber.Substring(0, 3);
                Mobile1.Text = string.IsNullOrEmpty(_user.BestContactNumber) ? string.Empty : _user.BestContactNumber.Substring(3, 3);
                Mobile2.Text = string.IsNullOrEmpty(_user.BestContactNumber) ? string.Empty : _user.BestContactNumber.Substring(6, 4);

                FirstName.Enabled = true;
                MiddleName.Enabled = true;
                LastName.Enabled = true;
                MobileArea.Enabled = true;
                Mobile1.Enabled = true;
                Mobile2.Enabled = true;
            }
        }

        protected void CreateRommateButton_Click(object sender, EventArgs e)
        {
            GridviewRoommatelist.DataSource = CreateDataSource();
            GridviewRoommatelist.DataBind();

            clear();

            if (ViewState["CurrentTable"] != null)
            {
                //  SaveRommateButton.Enabled = true;

            }
            else
            {
                //  SaveRommateButton.Enabled = false;

            }
        }

        public void clear()
        {
            Email.Text = "";
            FirstName.Text = "";
            MiddleName.Text = "";
            LastName.Text = "";
           // Mobile.Text = "";
            MobileArea.Text = "";
            Mobile1.Text = "";
            Mobile2.Text = "";
        }

        ICollection CreateDataSource()
        {
            DataTable dt = null;
            DataRow dr;
            DataTable dtCurrentTable = null;

            if (ViewState["CurrentTable"] != null)
            {
                dtCurrentTable = (DataTable)ViewState["CurrentTable"];
                dt = (DataTable)ViewState["CurrentTable"];

            }
            else
            {
                dtCurrentTable = new DataTable();
                dt = new DataTable();

                // Define the columns of the table.
                dt.Columns.Add(new DataColumn("Email", typeof(String)));
                dt.Columns.Add(new DataColumn("First Name", typeof(String)));
                dt.Columns.Add(new DataColumn("Middl eName", typeof(String)));
                dt.Columns.Add(new DataColumn("Last Name", typeof(String)));
                dt.Columns.Add(new DataColumn("Contact No", typeof(String)));
            }

            // Populate the table with sample values.

            dr = dt.NewRow();

            dr[0] = Email.Text.Trim();
            dr[1] = FirstName.Text.Trim();
            dr[2] = MiddleName.Text.Trim();
            dr[3] = LastName.Text.Trim();
            dr[4] = MobileArea.Text.Trim() + Mobile1.Text.Trim() + Mobile2.Text.Trim(); //Mobile.Text.Trim();
            dt.Rows.Add(dr);

            DataView dv = new DataView(dt);

            ViewState["CurrentTable"] = dt;
            return dv;
        }

        protected void RemoveRoommate_Click(object sender, EventArgs e)
        {

            LinkButton lb = (LinkButton)sender;

            GridViewRow gvRow = (GridViewRow)lb.NamingContainer;

            int rowID = gvRow.RowIndex; //+1;

            if (ViewState["CurrentTable"] != null)
            {

                DataTable dt = (DataTable)ViewState["CurrentTable"];

                if (dt.Rows.Count >= 1)
                {

                    if (gvRow.RowIndex <= dt.Rows.Count - 1)
                    {

                        //Remove the Selected Row data

                        dt.Rows.Remove(dt.Rows[rowID]);

                    }

                }

                //Store the current data in ViewState for future reference

                ViewState["CurrentTable"] = dt;

                //Re bind the GridView for the updated data

                GridviewRoommatelist.DataSource = dt;
                GridviewRoommatelist.DataBind();

            }

        }

        public bool Save()
        {
            bool result = true;

            aspnet_Roles aspnet_Roles_ = new aspnet_Roles();

            aspnet_Roles_ = aspnet_Roles.Select("student");

            foreach (GridViewRow row in GridviewRoommatelist.Rows)
            {
                user.PersonalEmail = row.Cells[1].Text;
                user.FirstName = row.Cells[2].Text;
                user.MiddleName = row.Cells[3].Text;
                user.LastName = row.Cells[4].Text;
                user.BestContactNumber = row.Cells[5].Text;

                user.UserId = Guid.NewGuid();
                user.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                user.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                user.IsPartialUser = true;
                user.HouseId = HouseId.Value;
                user.RoleId = aspnet_Roles_.RoleId;

                if (result = user.Save())
                {
                    Save_Student_House();

                    string strMsgContent = message(user.UserId.Value, user);

                    string strMsgTitle =  RHP.Common.Enums.SystemConfig.SITEURL + " is Requesting you to join with Us.";

                    int rtn = SendEmail(user.PersonalEmail, strMsgTitle, strMsgContent);

                    if (rtn == 1)
                    {
                    }

                   
                }
            }

            if (result)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Land_load/Land_load_Profile.aspx';}", true);
            }
            return result;
        }

        public void Save_Student_House()
        {
            // save current house for student
            user.HouseId = HouseId.Value;
            user.UpdateHouse();

            // log house details for futer use
            studentHouse.HouseId = HouseId.Value;
            studentHouse.UserId = user.UserId.Value;
            studentHouse.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            studentHouse.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

            studentHouse.Save();


        }

        public bool Next(bool val)
        {
            if (val)
            {
                RoommateAdd.Visible = false;
            }
            return true;
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            if (validateemail())
            {
                Labelmessage.Text = "landlord or student allready registerd for email : " + Email.Text.Trim().ToLower() + ". Please enter new details to continue..";
            }
            else
            {
                if (hdroommatestatus.Value == "Add")
                {
                    Save();
                }
                else if (hdroommatestatus.Value == "Edit")
                {
                    SaveEdit();
                }
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

        private string message(Guid ActivationKey, User _user)
        {
            string strMsgContent = string.Empty;

            try
            {
                string name = _user.FirstName + " " + _user.MiddleName + " " + _user.LastName;

                string RegisterUrl = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "Student/Student_Profile_Add.aspx?ActivationKey=" + ActivationKey;
                strMsgContent = "<div style=\"border:solid 1px #efefef;\"><div style=\"width:800;border:solid " +
                                    "1px #efefef;font-weight:bold; font-family:Verdana;font-size:12px; text-align:left;" +
                                    " background-color:#efefef;\" >  <strong>Dear</strong>  <span >" + name + ", " + "</span></div>" +
                                    "<br />";

                string loginpath = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "Login.aspx?type=s";

                strMsgContent = strMsgContent + "One of your house Room-mate created account with" + RHP.Common.Enums.SystemConfig.SITEURL + ", and Request you to join with " + RHP.Common.Enums.SystemConfig.SITEURL + ",<br/><br/>";

                //strMsgContent = strMsgContent + "Your account details are as follows. <br/><br/>";

                //strMsgContent = strMsgContent + "Your Name:  " + name + " <br/>";

                //strMsgContent = strMsgContent + "Email : " + _user.PersonalEmail + " <br/>";

                //strMsgContent = strMsgContent + "Contact No : " + _user.BestContactNumber + " <br/>";

                //strMsgContent = strMsgContent + "Please keep these details safe for future use.<br/>";

                strMsgContent = strMsgContent + RHP.Common.Enums.SystemConfig.SITEURL + " is a fast growing online house rating system that support for property owener's and students to connecting with each others.<br/><br/>";

                strMsgContent = strMsgContent + "'<b>Student housing made simple, reliable, most of all accountable..</b>' <br/><br/>";

                strMsgContent = strMsgContent + "if your are happy to join with us, Please click on the link below to create your account. it's 100% free.<br/><br/>";

                strMsgContent = strMsgContent + "<a href=" + RegisterUrl + "> Create Your " + RHP.Common.Enums.SystemConfig.SITEURL + " Account </a>  <br/><br/>";

                strMsgContent = strMsgContent + "If you have any issues with creating your account, please email " + "<a href=\"mailto:" + RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL + "?subject=I have issue with creating my account\">  " + RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL + " </a><br/>";

                strMsgContent = strMsgContent + "If you have already Registred, " + "<a href=" + loginpath + "> click here </a> to login to " + RHP.Common.Enums.SystemConfig.SITEURL + ". <br/>";

                strMsgContent = strMsgContent + "<br /> <strong>This is an automated response to activate your account. Please do not reply to this email.<br /><br />";

                strMsgContent = strMsgContent + "Sincerely yours,<br /> <a href=\"" + RHP.Common.Enums.SystemConfig.SITEURL + "\">" + RHP.Common.Enums.SystemConfig.SITEURL + "</a></strong><br /><br /></div>";

                strMsgContent = strMsgContent + "</br><span style=\"color:#818181; font-style:italic; font-size:12px;\">This email is confidential and is intended only for the individual named. Although reasonable precautions have been taken to ensure no viruses are present in this email, " + RHP.Common.Enums.SystemConfig.SITEURL + " do not warrant that this e-mail is free from viruses or other corruptions and is not liable to the recipient or any other party should any virus or other corruption be present in this e-mail. If you have received this email in error please notify the sender.</span>";

            }
            catch (Exception ex)
            {
                strMsgContent = string.Empty;

            }
            return strMsgContent;
        }

        protected void ButtonVerify_Click(object sender, EventArgs e)
        {
            Labelmessage.Text = "";
            if (Email.Text.Trim() != "")
            {
                User user_ = User.SelectUserByEmail("Email", Email.Text.Trim().ToLower(), "RoleName", "student");

                if (user_ != null)
                {
                    Labelmessage.Text = "student verified for email : " + Email.Text.Trim().ToLower();

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
                    FirstName.Text = "";
                    MiddleName.Text = "";
                    LastName.Text = "";
                    MobileArea.Text = "";
                    Mobile1.Text = "";
                    Mobile2.Text = "";

                    User user_check = new User();

                    if (user_check.IsUserEmailExist(Email.Text.Trim().ToLower()))
                    {
                        FirstName.Enabled = false;
                        MiddleName.Enabled = false;
                        LastName.Enabled = false;
                        MobileArea.Enabled = false;
                        Mobile1.Enabled = false;
                        Mobile2.Enabled = false;

                        if (user_check.IsPartialUserEmailExist(Email.Text.Trim().ToLower()))
                        {
                            Labelmessage.Text = "Email Address : " + Email.Text.Trim().ToLower() + ", is already Registed with Partial Account. Please enter another email.";
                        }
                        else
                        {
                            Labelmessage.Text = "Email Address : " + Email.Text.Trim().ToLower() + ", is already Registed with another Account. Please enter another email.";
                        }
                    }
                    else
                    {
                        Labelmessage.Text = "can not find registered landload for email : " + Email.Text.Trim().ToLower() + ". Please enter details to continue..";
                        FirstName.Enabled = true;
                        MiddleName.Enabled = true;
                        LastName.Enabled = true;
                        MobileArea.Enabled = true;
                        Mobile1.Enabled = true;
                        Mobile2.Enabled = true;
                    }

                }
            }
            else
            {
                clear();

            }
        }

        protected void LBAddStudent_Click(object sender, EventArgs e)
        {
            hdroommatestatus.Value = "Add";
            RoomMateInfoHeader.Text = "Room-Mate Info - Add";
            RoommateAdd.Visible = true;
            clear();
            SaveNewStudent.Visible = true;
            SaveEditStudent.Visible = false;
            CurrentDetails.Visible = false;
        }

        public bool SaveEdit()
        {
            bool result = true;

            aspnet_Roles aspnet_Roles_ = new aspnet_Roles();

            aspnet_Roles_ = aspnet_Roles.Select("student");

            User user_ = new User();

            user_ = RHP.UserManagement.User.Select(Guid.Parse(hdUserID.Value));

            user_.PersonalEmail = Email.Text.Trim();
            user_.FirstName = FirstName.Text.Trim();
            user_.MiddleName = MiddleName.Text.Trim();
            user_.LastName = LastName.Text.Trim();
            user_.BestContactNumber = MobileArea.Text.Trim() + Mobile1.Text.Trim() + Mobile2.Text.Trim();

            user_.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            user_.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

            if (result = user_.Save())
            {

                //string strMsgContent = message(user_.UserId.Value, user_);

                //string strMsgTitle = "www.ratemystudenthome.com is Requesting you to join with Us.";

                //int rtn = SendEmail(user_.PersonalEmail, strMsgTitle, strMsgContent);

                //if (rtn == 1)
                //{
                //}
            }


            if (result)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Student/Student_Profile.aspx';}", true);
            }
            return result;
        }

        public bool validateemail()
        {
            bool isexist = false;
            Labelmessage.Text = "";
            if (Email.Text.Trim() != "")
            {
                User user_ = new User();

                if (user_.IsUserEmailExist(Email.Text.Trim().ToLower()))
                {
                    isexist = true;

                    if (user_.IsPartialUserEmailExist(Email.Text.Trim().ToLower()))
                    {
                        Labelmessage.Text = "Email Address : " + Email.Text.Trim().ToLower() + ", is already Registed with Partial Account. Please enter another email.";
                    }
                    else
                    {
                        Labelmessage.Text = "Email Address : " + Email.Text.Trim().ToLower() + ", is already Registed with another Account. Please enter another email.";
                    }

                    // Labelmessage.Text = "landlord or student allready registerd for email : " + Email.Text.Trim().ToLower() + ". Please enter new details to continue..";


                }
                else
                {
                    isexist = false;
                    //  Labelmessage.Text = "student verified for email : " + Email.Text.Trim().ToLower();
                }
            }
            else
            {
                isexist = false;
            }

            return isexist;
        }

        protected void EditRommateButton_Click(object sender, EventArgs e)
        {
            if (Email.Text.Trim() == EditPartialUserEmail.Text.Trim())
            {
                if (hdroommatestatus.Value == "Edit")
                {
                    SaveEdit();
                }
                else
                {
                    Labelmessage.Text = "Please Try Again..";
                }


            }
            else if (validateemail())
            {
                Labelmessage.Text = "landlord or student allready registerd for email : " + Email.Text.Trim().ToLower() + ". Please enter new details to continue..";
            }
            else
            {
                if (hdroommatestatus.Value == "Add")
                {
                    Save();
                }
                else if (hdroommatestatus.Value == "Edit")
                {
                    SaveEdit();
                }
            }
        }

    }
}