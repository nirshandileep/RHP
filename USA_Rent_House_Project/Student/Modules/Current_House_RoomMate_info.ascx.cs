using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using RHP.UserManagement;
using RHP.Common;
using RHP.SessionManager;
using System.Web.Security;
using RHP.StudentManagement;
using RHP.LandlordManagement;
using RHP.Utility;
using RHP.CommunicationManagement;
using RHP.Photos;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Current_House_RoomMate_info : System.Web.UI.UserControl
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
                    _user = new User(); //_user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
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
            LoadStudent();
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
            Photo photo = new Photo();
            HiddenField HiddenField_ = (HiddenField)e.Item.FindControl("hdUserId");

            HyperLink Image_ = (HyperLink)e.Item.FindControl("HyperLinkimage");

            Image_.ImageUrl = photo.LoadImage(Guid.Parse(HiddenField_.Value.ToString()), Enums.PhotoCategory.Profile_Picture);
        }
       
        public bool validateemail()
        {
            bool isexist = false;
            Labelmessage.Text = "";
            if (NewEmail.Text.Trim() != "")
            {
                isexist = true;
            }
            else
            {
                isexist = false;
            }

            return isexist;
        }

        protected void CreateRommateButton_Click(object sender, EventArgs e)
        {
            if (validateemail() == true)
            {
                GridviewRoommatelist.DataSource = CreateDataSource();
                GridviewRoommatelist.DataBind();

                clear();
            }
        }

        public void clear()
        {
            NewEmail.Text = "";
            Email.Text = "";
            FirstName.Text = "";
            MiddleName.Text = "";
            LastName.Text= "";
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

                dr[0] = string.IsNullOrEmpty(NewEmail.Text.Trim()) ? string.Empty : NewEmail.Text.Trim();
                dr[1] = string.IsNullOrEmpty(FirstName.Text.Trim()) ? string.Empty : FirstName.Text.Trim();
                dr[2] = string.IsNullOrEmpty(MiddleName.Text.Trim()) ? string.Empty : MiddleName.Text.Trim();
                dr[3] = string.IsNullOrEmpty(LastName.Text.Trim()) ? string.Empty : LastName.Text.Trim();
                dr[4] = MobileArea.Text.Trim() + Mobile1.Text.Trim() + Mobile2.Text.Trim();//Mobile.Text.Trim();
                dt.Rows.Add(dr);
            
            DataView dv = new DataView(dt);

            ViewState["CurrentTable"] =  dt;
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

            User user_ = new User(); 
            foreach (GridViewRow row in GridviewRoommatelist.Rows)
            {
                user_.PersonalEmail = string.IsNullOrEmpty(row.Cells[1].Text.Trim()) ? string.Empty : row.Cells[1].Text.Trim();
                user_.FirstName = string.IsNullOrEmpty(row.Cells[2].Text.Trim()) ? string.Empty : row.Cells[2].Text.Trim();
                user_.MiddleName = string.IsNullOrEmpty(row.Cells[3].Text.Trim()) ? string.Empty : row.Cells[3].Text.Trim();
                user_.MiddleName = user_.MiddleName.Replace("&nbsp;", "");
                user_.LastName = string.IsNullOrEmpty(row.Cells[4].Text.Trim()) ? string.Empty : row.Cells[4].Text.Trim();
                user_.BestContactNumber = string.IsNullOrEmpty(row.Cells[5].Text.Trim()) ? string.Empty : row.Cells[5].Text.Trim();

                user_.UserId = Guid.NewGuid();
                user_.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                user_.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                user_.IsPartialUser = true;
                user_.HouseId = HouseId.Value;
                user_.RoleId = aspnet_Roles_.RoleId;

                if (result = user_.Save())
                {
                    Save_Student_House(user_);

                    string strMsgContent = message(user_.UserId.Value, user_);

                    string strMsgTitle =  SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "  is Requesting you to join with Us.";

                    int rtn = SendEmail(user_.PersonalEmail, strMsgTitle, strMsgContent);

                    if (rtn == 1)
                    {
                    }

                    
                }
            }

            if (result)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Student/Student_Profile.aspx';}", true);
            }
            return result;
        }

        public void Save_Student_House(User user_)
        {
            // save current house for student
            user_.HouseId = HouseId.Value;
            user_.UpdateHouse();

            // log house details for futer use
            studentHouse.HouseId = HouseId.Value;
            studentHouse.UserId = user_.UserId.Value;
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
                                    " background-color:#efefef;\"   <span >" + name + ", " + "</span></div>" +
                                    "<br />";

                string loginpath = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "Login.aspx?type=s";

                strMsgContent = strMsgContent + "Your current roommates created a “Full Profile” with " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " ,and in the process created/updated “My Current House” feature of the platform. ,<br/><br/>";

                strMsgContent = strMsgContent + "In doing so they have created a “Partial Profile” for you and have begun to rate you and comment on their and your housing situation. Create a “Full Profile” to see what they have said and to access/complete “My Current House”;so that you can also begin to rate and comment on your current roommates and/or landlord. Click link below to create a “Full Profile”.";

                strMsgContent = strMsgContent + "<a href=" + RegisterUrl + "> Create Your " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " Account </a>  <br/><br/>";


                strMsgContent = strMsgContent + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " is a platform, where students and landlords can rate, review, and comment on each other. As well as find and connect with other student renters and landlords using our search engine. <br/><br/>";

                strMsgContent = strMsgContent + "'<b>Student housing made simple, reliable, most of all accountable...</b>' <br/><br/>";

                strMsgContent = strMsgContent + "If you have any issues with Leaving Current House, please email " + "<a href=\"mailto:" + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL) + "?subject=I have issue with creating my account\"> " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL) + " </a><br/>";

                strMsgContent = strMsgContent + "If you have already responded to the request, please ignore this email.  <br/>";

                strMsgContent = strMsgContent + "If you have already created a “Full Profile” (registered), " + "<a href=" + loginpath + "> click here </a> to login to " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + ". <br/>";

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

        protected void ButtonVerify_Click(object sender, EventArgs e)
        {
            Labelmessage.Text = "";
            if (Email.Text.Trim() != "")
            {
                User user_ = User.SelectUserByEmail("Email", Email.Text.Trim().ToLower(), "RoleName", "student");

                if (user_ != null)
                {
                    if (user_.HouseId.HasValue)
                    {
                        Labelmessage.Text = "Email Address : " + Email.Text.Trim().ToLower() + ", is already Registed with a another House. Please enter another email.";
                        
                    }
                    else
                    {
                        Labelmessage.Text = "student verified for email : " + Email.Text.Trim().ToLower();

                        // Email.Text = user_.PersonalEmail;
                        NewEmail.Text = string.IsNullOrEmpty(Email.Text.Trim().ToLower()) ? string.Empty : Email.Text.Trim().ToLower();
                        FirstName.Text = string.IsNullOrEmpty(user_.FirstName) ? string.Empty : user_.FirstName;
                        MiddleName.Text = string.IsNullOrEmpty(user_.MiddleName) ? string.Empty : user_.MiddleName;
                        LastName.Text = string.IsNullOrEmpty(user_.LastName) ? string.Empty : user_.LastName;

                        MobileArea.Text = string.IsNullOrEmpty(user_.BestContactNumber) ? string.Empty : user_.BestContactNumber.Substring(0, 3);
                        Mobile1.Text = string.IsNullOrEmpty(user_.BestContactNumber) ? string.Empty : user_.BestContactNumber.Substring(3, 3);
                        Mobile2.Text = string.IsNullOrEmpty(user_.BestContactNumber) ? string.Empty : user_.BestContactNumber.Substring(6, 4);


                        //Mobile.Text = user_.BestContactNumber;
                    
                    

                    }
                }
                else
                {
                    FirstName.Text = "";
                    MiddleName.Text = "";
                    LastName.Text = "";
                    MobileArea.Text = "";
                    Mobile1.Text = "";
                    Mobile2.Text = "";
                    NewEmail.Text = "";
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
                            User userPartial = User.SelectByRoleName("RoleName", "student", "Email", Email.Text.Trim().ToLower());

                            if (userPartial != null)
                            {
                                if (userPartial.HouseId.HasValue)
                                {
                                    Labelmessage.Text = "Email Address : " + Email.Text.Trim().ToLower() + ", is already Registed with a another House. Please enter another email.";

                                }
                                else
                                {
                                    Labelmessage.Text = "student verified for email : " + Email.Text.Trim().ToLower();


                                    NewEmail.Text = string.IsNullOrEmpty(Email.Text.Trim().ToLower()) ? string.Empty : Email.Text.Trim().ToLower();
                                    FirstName.Text = string.IsNullOrEmpty(userPartial.FirstName) ? string.Empty : userPartial.FirstName;
                                    MiddleName.Text = string.IsNullOrEmpty(userPartial.MiddleName) ? string.Empty : userPartial.MiddleName;
                                    LastName.Text = string.IsNullOrEmpty(userPartial.LastName) ? string.Empty : userPartial.LastName;


                                    MobileArea.Text = string.IsNullOrEmpty(userPartial.BestContactNumber) ? string.Empty : userPartial.BestContactNumber.Substring(0, 3);
                                    Mobile1.Text = string.IsNullOrEmpty(userPartial.BestContactNumber) ? string.Empty : userPartial.BestContactNumber.Substring(3, 3);
                                    Mobile2.Text = string.IsNullOrEmpty(userPartial.BestContactNumber) ? string.Empty : userPartial.BestContactNumber.Substring(6, 4);
                                }
                            }
                            else
                            {
                                Labelmessage.Text = "Email Address : " + Email.Text.Trim().ToLower() + ", is already Registed with Partial Lanlord Account. Please enter another email.";
                            }
                        }
                        else
                        {
                            Labelmessage.Text = "Email Address : " + Email.Text.Trim().ToLower() + ", is already Registed with another Account. Please enter another email.";
                        }
                    }
                    else
                    {
                        Labelmessage.Text = "can not find registered Student for email : " + Email.Text.Trim().ToLower() + ". Please enter details to continue..";

                        NewEmail.Text = string.IsNullOrEmpty(Email.Text.Trim().ToLower()) ? string.Empty : Email.Text.Trim().ToLower();
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
    }
}