using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using System.Web.Security;
using RHP.SessionManager;
using RHP.Common;

namespace USA_Rent_House_Project.Modules
{
    public partial class Change_Secret_Question : System.Web.UI.UserControl
    {
        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {
                    _user = new User();
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
            MembershipUser u = Membership.GetUser();
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                CurrentQuestionTextbox.Text = string.IsNullOrEmpty(u.PasswordQuestion) ? string.Empty : u.PasswordQuestion;

                if (user.IsFBUser == true)
                {
                    if (Roles.IsUserInRole(HttpContext.Current.User.Identity.Name, "admin"))
                    {
                        Response.Redirect("~/Administrator/Default.aspx");
                    }
                    else if (Roles.IsUserInRole(HttpContext.Current.User.Identity.Name, "student"))
                    {
                        Response.Redirect("~/Student/Student_Profile.aspx");
                    }
                    else if (Roles.IsUserInRole(HttpContext.Current.User.Identity.Name, "landlord"))
                    {
                        Response.Redirect("~/Land_load/Land_load_Profile.aspx");
                    }
                    else
                    {
                        Response.Redirect("~/Default.aspx");
                    }

                }
                else
                {

                }
            }
            else
            { Response.Redirect("~/Login.aspx"); }

        }

        public void ChangePasswordQuestion_OnClick(object sender, EventArgs args)
        {
            try
            {

                MembershipUser u = Membership.GetUser();
                Boolean result = u.ChangePasswordQuestionAndAnswer(PasswordTextbox.Text,
                                                  QuestionTextbox.Text,
                                                  AnswerTextbox.Text);

                if (result)
                    Msg.Text = "Password Question and Answer changed.";
                else
                    Msg.Text = "Password Question and Answer change failed.";
            }
            catch (Exception e)
            {
                Msg.Text = "Change failed. Please re-enter your values and try again.";
            }
        }
    }
}