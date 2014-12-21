using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;
using System.Web.Security;
using RHP.Photos;
using System.Data;
using RHP.Utility;
using RHP.CommunicationManagement;
using RHP.StudentManagement;

namespace USA_Rent_House_Project.Student
{
    public partial class Student_Profile_Leave_Current_House : System.Web.UI.Page
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

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadUserData();
           
        }

        public void LoadUserData()
        {

            UserDAO userDAO = new UserDAO();

            user = RHP.UserManagement.User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

            if (user.HouseId != null)
            {
                ButtonLeaveHouseID.Visible = true;
                ViewCurrentHouseButton.Visible = true;
                UpdateCurrentHouseButton.Visible = true;

                LoadStudent(user.HouseId.Value);
                LoadLeaveCurrentHouseRequest(user.HouseId.Value);
            }
            else
            {
                CreateCurrentHouseButton.Visible = true;

                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.CurrentHouseNoRecords + "'); window.location = '/Student/Student_Profile_Current_House.aspx';}", true);

            }
        }

        public void LoadStudent(Guid HouseId)
        {

                // HouseId = Guid.Parse("8313D02D-FA75-474A-A93B-0EFD3B817A88");

            List<User> userList = RHP.UserManagement.User.SelectUserByHouseId("HouseId", HouseId, "RoleName", "student");

                DataListStudentList.DataSource = userList;
                DataListStudentList.DataBind();
           
        }

        public void LoadLeaveCurrentHouseRequest(Guid HouseId)
        {
                StudentHouseLeave studentHouseLeave = new StudentHouseLeave();
                studentHouseLeave = StudentHouseLeave.Select(HouseId, Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

                if ((studentHouseLeave.RequestBy != null && studentHouseLeave.RequestBy != Guid.Empty) && studentHouseLeave.status == 0)
                {
                    RHP.UserManagement.User _RequestedUser = RHP.UserManagement.User.Select(studentHouseLeave.RequestBy);

                   // Photo photo = new Photo();
                   // RequestedUser.ImageUrl = photo.LoadImage(studentHouseLeave.RequestBy, Enums.PhotoCategory.Profile_Picture);

                    RequestedUser.Text = _RequestedUser.FirstName + " " + _RequestedUser.LastName;
                    RequestedUserName.Text = _RequestedUser.FirstName + " " + _RequestedUser.LastName;

                    RequestedUser.NavigateUrl = "~/Student/Student_Public_Profile.aspx?AccessCode=" + studentHouseLeave.RequestBy;

                    RespondeToLeaveHouseTrue.Visible = true;
                }
                else
                {
                    RespondeToLeaveHouseFalse.Visible = true;
                }
        }
      
        protected void ItemDataBound(object sender, DataListItemEventArgs e)
        {
            Photo photo = new Photo();
            HiddenField HiddenField_ = (HiddenField)e.Item.FindControl("hdUserId");
            HiddenField hdHouseId_ = (HiddenField)e.Item.FindControl("hdHouseId");

            HyperLink Image_ = (HyperLink)e.Item.FindControl("HyperLinkimage");
            LinkButton RequestLeaveCurrentHouse_ = (LinkButton)e.Item.FindControl("RequestLeaveCurrentHouse");
            Label LabelItsMe_ = (Label)e.Item.FindControl("LabelItsMe");

            Image_.ImageUrl = photo.LoadImage(Guid.Parse(HiddenField_.Value.ToString()), Enums.PhotoCategory.Profile_Picture);

            if (Guid.Parse(HiddenField_.Value) == Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()))
            {
                RequestLeaveCurrentHouse_.Visible = false;
                LabelItsMe_.Visible = true;
                LabelItsMe_.Text = "It's Me";

            }
            else
            {
                
                StudentHouseLeave studentHouseLeave = new StudentHouseLeave();
                studentHouseLeave = StudentHouseLeave.Select(Guid.Parse(hdHouseId_.Value), Guid.Parse(HiddenField_.Value));

                if ((studentHouseLeave.RequestBy != null && studentHouseLeave.RequestBy != Guid.Empty) && studentHouseLeave.status == 0)
                {
                    if (studentHouseLeave.RequestBy == Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()))
                    {
                        RequestLeaveCurrentHouse_.Visible = false;
                        LabelItsMe_.Visible = true;
                        LabelItsMe_.Text = "Request Already Sent";
                    }
                }
            }
        }

        public void OnConfirm(object sender, EventArgs e)
        {
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                user.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                Guid HouseId = user.HouseId.Value; 
                user.HouseId = null;

                if (user.UpdateHouse())
                {
                    StudentHouseLeave studentHouseLeave = new StudentHouseLeave();
                    studentHouseLeave = StudentHouseLeave.Select(HouseId, Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                    studentHouseLeave.status = 1;

                    if (studentHouseLeave.Save())
                    {

                    }

                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Delete_success + "'); window.location = '/Student/Student_Profile.aspx';}", true);
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Delete_Unsuccess + "'); window.location = '/Student/Student_Profile.aspx';}", true);
                }

              
            }
            else
            {
                // this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You clicked NO!')", true);
            }
        }

        protected void RequestLeaveCurrentHouse_Command(object sender, CommandEventArgs args)
        {
            string userid = (string)args.CommandArgument;
           
            RHP.UserManagement.User _user = new RHP.UserManagement.User();

            _user = RHP.UserManagement.User.Select(Guid.Parse(userid));

            StudentHouseLeave studentHouseLeave = new StudentHouseLeave();
            studentHouseLeave.RequestBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            studentHouseLeave.RequestTo = Guid.Parse(userid);
            studentHouseLeave.HouseId = _user.HouseId.Value;
            studentHouseLeave.status = 0;

            studentHouseLeave.Save();

            string strMsgContent = message(_user);

            string strMsgTitle = "www.ratemystudenthome.com is Requesting you to Leave Current House.";

            int rtn = SendEmail(_user.PersonalEmail, strMsgTitle, strMsgContent);

            Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.LeaveCurrentHouseRequestSuccess + "'); window.location = '/Student/Student_Profile_Leave_Current_House.aspx';}", true);

        }

        protected int SendEmail(string To, string Subject, string Body)
        {

            try
            {
                string host = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_HOST);
                string fromEmail = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL);

                EmailManager emailManager = new EmailManager(host, fromEmail);

                emailManager.SendEmail(To, Subject, string.Empty, fromEmail, string.Empty, Body);

                return 1;
            }
            catch (Exception ex)
            {
                return 0;
            }

        }

        private string message(User _user)
        {
            string strMsgContent = string.Empty;

            try
            {
                string name = _user.FirstName + " " + _user.MiddleName + " " + _user.LastName;

                string RegisterUrl = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "Student/Student_Profile_Leave_Current_House.aspx";
                strMsgContent = "<div style=\"border:solid 1px #efefef;\"><div style=\"width:800;border:solid " +
                                    "1px #efefef;font-weight:bold; font-family:Verdana;font-size:12px; text-align:left;" +
                                    " background-color:#efefef;\" >  <strong>Dear</strong>  <span >" + name + ", " + "</span></div>" +
                                    "<br />";

                string loginpath = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "Login.aspx?type=s";

                strMsgContent = strMsgContent + "One of your house Room-mate registerd with ratemystudenthome.com, and Request you to leave current house in ratemystudenthome.com,<br/><br/>";


                strMsgContent = strMsgContent + "ratemystudenthome.com is a fast growing online house rating system that support for property owener's and students to connecting with each others.<br/><br/>";

                strMsgContent = strMsgContent + "'<b>Student housing made simple, reliable, most of all accountable..</b>' <br/><br/>";

                strMsgContent = strMsgContent + "Please click on the link below to Leave Your Current House.<br/><br/>";

                strMsgContent = strMsgContent + "<a href=" + RegisterUrl + "> Leave Your Current House </a>  <br/><br/>";

                strMsgContent = strMsgContent + "If you have any issues with Leaving Current House, please email " + "<a href=\"mailto:support@ratemystudenthome.com?subject=I have issue with creating my account\">  support@ratemystudenthome.com </a><br/>";

                strMsgContent = strMsgContent + "If you have already Leave Current House, please ignore this email. <br/>";

                strMsgContent = strMsgContent + "<br /> <strong>This is an automated response to Request you to leave current house. Please do not reply to this email.<br /><br />";

                strMsgContent = strMsgContent + "Sincerely yours,<br /> <a href=\"www.ratemystudenthome.com\">ratemystudenthome.com</a></strong><br /><br /></div>";

                strMsgContent = strMsgContent + "</br><span style=\"color:#818181; font-style:italic; font-size:12px;\">This email is confidential and is intended only for the individual named. Although reasonable precautions have been taken to ensure no viruses are present in this email, ratemystudenthome.com do not warrant that this e-mail is free from viruses or other corruptions and is not liable to the recipient or any other party should any virus or other corruption be present in this e-mail. If you have received this email in error please notify the sender.</span>";

            }
            catch (Exception ex)
            {
                strMsgContent = string.Empty;

            }
            return strMsgContent;
        }

        protected void OnConfirmRequest(object sender, EventArgs e)
        {
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                user.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

                user.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                Guid HouseId = user.HouseId.Value;
                user.HouseId = null;

                if (user.UpdateHouse())
                {
                    StudentHouseLeave studentHouseLeave = new StudentHouseLeave();
                    studentHouseLeave = StudentHouseLeave.Select(HouseId, Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                    studentHouseLeave.status = 1;

                    if (studentHouseLeave.Save())
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.LeaveCurrentHouseResponseSuccess + "'); window.location = '/Student/Student_Profile_Leave_Current_House.aspx';}", true);
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.LeaveCurrentHouseResponseUnSuccess + "'); window.location = '/Student/Student_Profile_Leave_Current_House.aspx';}", true);
                    }
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.LeaveCurrentHouseResponseUnSuccess + "'); window.location = '/Student/Student_Profile_Leave_Current_House.aspx';}", true);
                }


            }
            else
            {
                user.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

                StudentHouseLeave studentHouseLeave = new StudentHouseLeave();
                studentHouseLeave = StudentHouseLeave.Select(user.HouseId.Value, Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                studentHouseLeave.status = 2;

                if (studentHouseLeave.Save())
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.RejectLeaveCurrentHouseResponseSuccess + "'); window.location = '/Student/Student_Profile_Leave_Current_House.aspx';}", true);
                }
            }
        }

    }
}