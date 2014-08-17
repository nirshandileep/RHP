using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using RHP.UserManagement;
using RHP.Common;
using RHP.Utility;
using RHP.SessionManager;

namespace USA_Rent_House_Project.Modules
{
    public partial class Login : System.Web.UI.UserControl
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
         //   CreateProfile
            if (!IsPostBack)
            {
                if (HttpContext.Current.User.Identity.IsAuthenticated)
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
                    string value = Utility.GetQueryStringValueByKey(Request, "type");

                    if (value == "s")
                    {
                        CreateProfile.Visible = true;
                        FacebookLogin.Visible = true;
                        FacebookLogin.NavigateUrl = "~/Facebook-Login.aspx?type=s";
                        CreateProfile.NavigateUrl = "~/Student/Student_Profile_Add.aspx";
                    }
                    else if (value == "l")
                    {
                        CreateProfile.Visible = true;
                        FacebookLogin.Visible = true;
                        FacebookLogin.NavigateUrl = "~/Facebook-Login.aspx?type=l";
                        CreateProfile.NavigateUrl = "~/Land_load/Land_load_Profile_Add.aspx";
                    }
                }
                
            }
        }

        private void login()
        {

            user.UserName = LoginUser.UserName;
            user.Password = LoginUser.Password;

            if (user.AuthenticateUser())
            {
                try
                {
                    //user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

                    //user.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

                    //Session[Constants.SESSION_LOGGED_USER] = user;

                    user.RedirectUserFromLogin(false);
                }
                catch (Exception ex)
                {
                    user.LogOut();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Login_Fail + "'); }", true);
                }
            }
            else
            {

             //   string script = "window.onload = function(){ alert('" + Messages.Login_Fail + "'); window.location = '/' }";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Login_Fail + "'); }", true);

                //user.LogOut();
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            login();
        }
    }
}