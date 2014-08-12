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

namespace USA_Rent_House_Project.Modules
{
    public partial class Login : System.Web.UI.UserControl
    {

        private User user = new User();
        
        protected void Page_Load(object sender, EventArgs e)
        {
         //   CreateProfile
            if (!IsPostBack)
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

        private void login()
        {

            user.UserName = LoginUser.UserName;
            user.Password = LoginUser.Password;

            if (user.AuthenticateUser())
            {
                try
                {
                    //MembershipUser u = Membership.GetUser(user.UserName, false);
                    //user = User.Select( new Guid(u.ProviderUserKey.ToString()));

                    //Session[Constants.SESSION_LOGGED_USER] = user;
                    user.RedirectUserFromLogin(false);
                }
                catch (Exception ex)
                {
                    user.LogOut();
                }
            }
            else
            {
                user.LogOut();
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            login();
        }
    }
}