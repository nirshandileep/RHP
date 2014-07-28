using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using RHP.UserManagement;
using RHP.Common;

namespace USA_Rent_House_Project.Modules
{
    public partial class Login : System.Web.UI.UserControl
    {

        private User user = new User();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void login()
        {

            user.UserName = LoginUser.UserName;
            user.Password = LoginUser.Password;

            if (user.AuthenticateUser())
            {
                try
                {
                    user.RedirectUserFromLogin();
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