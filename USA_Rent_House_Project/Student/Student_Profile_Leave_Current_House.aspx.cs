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

                LoadStudentByHouseId(user.HouseId.Value);
                LoadLeaveCurrentHouseRequest(user.HouseId.Value);
            }
            else if (user.BaseHouseRoomId != null)
            {
                ButtonLeaveHouseID.Visible = true;

                LoadStudentByBaseHouseRoomId(user.BaseHouseRoomId.Value);
                LoadLeaveCurrentRoomRequest(user.BaseHouseRoomId.Value);
            }
            else
            {
                
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.CurrentHouseNoRecords + "'); window.location = '/Student/Student_Profile_Current_House.aspx';}", true);

            }
        }

        public void LoadStudentByHouseId(Guid houseId)
        {
            List<User> userList = RHP.UserManagement.User.SelectUserByHouseId("HouseId", houseId, "RoleName", "student");
            DataListStudentList.DataSource = userList;
            DataListStudentList.DataBind();
        }

        public void LoadStudentByBaseHouseRoomId(Guid roomId)
        {
            List<User> userList = RHP.UserManagement.User.SelectUserByHouseId("BaseHouseRoomId", roomId, "RoleName", "student");
            DataListStudentList.DataSource = userList;
            DataListStudentList.DataBind();
        }

        public void LoadLeaveCurrentHouseRequest(Guid HouseId)
        {
                StudentHouseLeave studentHouseLeave = new StudentHouseLeave();
                studentHouseLeave = StudentHouseLeave.SelectByHouseId(HouseId, Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

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

        public void LoadLeaveCurrentRoomRequest(Guid roomId)
        {
            StudentHouseLeave studentHouseLeave = new StudentHouseLeave();
            studentHouseLeave = StudentHouseLeave.SelectByRoomId(roomId, Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

            if ((studentHouseLeave.RequestBy != null && studentHouseLeave.RequestBy != Guid.Empty) && studentHouseLeave.status == 0)
            {
                RHP.UserManagement.User _RequestedUser = RHP.UserManagement.User.Select(studentHouseLeave.RequestBy);
                RequestedUser.Text = _RequestedUser.FirstName + " " + _RequestedUser.LastName;
                RequestedUserName.Text = _RequestedUser.FirstName + " " + _RequestedUser.LastName;
                RequestedUser.NavigateUrl = "~/Student/Student_Public_Profile.aspx?AccessCode=" + studentHouseLeave.RequestBy + "&AccessCode2=" + roomId.ToString();
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
            HiddenField hdBaseHouseRoomId_ = (HiddenField)e.Item.FindControl("hdBaseHouseRoomId");

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
                if (hdHouseId_.Value.Trim() != string.Empty)
                {
                    studentHouseLeave = StudentHouseLeave.SelectByHouseId(Guid.Parse(hdHouseId_.Value), Guid.Parse(HiddenField_.Value));
                }
                else if (hdBaseHouseRoomId_.Value.Trim() != string.Empty)
                {
                    studentHouseLeave = StudentHouseLeave.SelectByHouseId(Guid.Parse(hdBaseHouseRoomId_.Value), Guid.Parse(HiddenField_.Value));
                }
                

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
                Guid HouseId = Guid.Empty;
                Guid RoomId = Guid.Empty;
                if (user.HouseId.HasValue)
                {
                    HouseId = user.HouseId.Value;
                    user.HouseId = null;
                }
                else if (user.BaseHouseRoomId.HasValue)
                {
                    RoomId = user.BaseHouseRoomId.Value;
                    user.BaseHouseRoomId = null;
                }                

                if (user.UpdateHouse())
                {
                    StudentHouseLeave studentHouseLeave = new StudentHouseLeave();
                    if (user.HouseId.HasValue)
                    {
                        studentHouseLeave = StudentHouseLeave.SelectByHouseId(HouseId, Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));    
                    }
                    else if (user.BaseHouseRoomId.HasValue)
                    {
                        studentHouseLeave = StudentHouseLeave.SelectByRoomId(RoomId, Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));    
                    }
                    
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
                                    " background-color:#efefef;\" > <span >" + name + ", " + "</span></div>" +
                                    "<br />";

                string loginpath = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "Login.aspx?type=s";

                strMsgContent = strMsgContent + "One of your “Current House” members that has a “Full Profile” with " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + ", com has requested that you to “Leave My Current House”. <br/><br/>";

                strMsgContent = strMsgContent + "Please click on the link below to “Leave My Current House”.<br/><br/>";

                strMsgContent = strMsgContent + "<a href=" + RegisterUrl + "> Leave Your Current House  </a>  <br/><br/>";

                strMsgContent = strMsgContent + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " is a platform, where students and landlords can rate, review, and comment on each other. As well as find and connect with other student renters and landlords using our search engine. <br/><br/>";

                strMsgContent = strMsgContent + "'<b>Student housing made simple, reliable, most of all accountable...</b>' <br/><br/>";

                strMsgContent = strMsgContent + "If you have any issues with Leaving Current House, please email " + "<a href=\"mailto:" + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL) + "?subject=I have issue with creating my account\"> " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL) + " </a><br/>";

                strMsgContent = strMsgContent + "If you have already responded to the request, please ignore this email.  <br/>";

                strMsgContent = strMsgContent + "<br /> <strong>This is an automated response to Request you to leave current house. Please do not reply to this email.<br /><br />";

                strMsgContent = strMsgContent + "From the Founder and CEO/President of<br /> <a href=\"" + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "\">" + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "</a></strong><br /><br /></div>";

                strMsgContent = strMsgContent + "</br><span style=\"color:#818181; font-style:italic; font-size:12px;\">This email is confidential and is intended only for the individual named. Although reasonable precautions have been taken to ensure no viruses are present in this email," + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " do not warrant that this e-mail is free from viruses or other corruptions and is not liable to the recipient or any other party should any virus or other corruption be present in this e-mail. If you have received this email in error please notify the sender.</span>";

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
                
                Guid HouseId = Guid.Empty;
                Guid RoomId = Guid.Empty;
                if (user.HouseId.HasValue)
                {
                    HouseId = user.HouseId.Value;
                    user.HouseId = null;
                }
                else if (user.BaseHouseRoomId.HasValue)
                {
                    RoomId = user.BaseHouseRoomId.Value;
                    user.BaseHouseRoomId = null;
                }

                if (user.UpdateHouse())
                {
                    StudentHouseLeave studentHouseLeave = new StudentHouseLeave();
                    if (user.HouseId.HasValue)
                    {
                        studentHouseLeave = StudentHouseLeave.SelectByHouseId(HouseId, Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                    }
                    else if (user.BaseHouseRoomId.HasValue)
                    {
                        studentHouseLeave = StudentHouseLeave.SelectByRoomId(RoomId, Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                    }

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
                if (user.HouseId.HasValue)
                {
                    studentHouseLeave = StudentHouseLeave.SelectByHouseId(user.HouseId.Value, Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                }
                else if (user.BaseHouseRoomId.HasValue)
                {
                    studentHouseLeave = StudentHouseLeave.SelectByRoomId(user.BaseHouseRoomId.Value, Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                }
                
                studentHouseLeave.status = 2;

                if (studentHouseLeave.Save())
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.RejectLeaveCurrentHouseResponseSuccess + "'); window.location = '/Student/Student_Profile_Leave_Current_House.aspx';}", true);
                }
            }
        }

    }
}