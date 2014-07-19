using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace USA_Rent_House_Project.Modules
{
    public partial class Login : System.Web.UI.UserControl
    {
        private static string strAccountLocked = null;
        private string strAuthUserID;
        private string strUsername, strPassword;
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void LoginUser_Authenticate(object sender, AuthenticateEventArgs e)
        {
            strUsername = LoginUser.UserName;

            strPassword = LoginUser.Password;
            login();
        }

        private void login()
        {

            if (authenticateUser())
            {

                try
                {



                }

                catch (Exception ex)
                {


                }

            }
            else
            {

            }
        }

        protected bool authenticateUser()
        {
            string success = "";
            bool boolAuthenticated = false;
            try
            {
                // Authenticate Credentials
                boolAuthenticated = Membership.ValidateUser(strUsername, strPassword);
                if (boolAuthenticated)
                    success = "True";
                else
                    success = "False";

                if (success == "True")
                {

                    MembershipUser newUser;
                    newUser = Membership.GetUser(strUsername);

                    strAuthUserID = newUser.ProviderUserKey.ToString();


                    if (newUser.IsLockedOut)
                        strAccountLocked = "Account Locked Out. Max Password Attempts Reached. Please Contact Admin";

                }
                /*

                bool pass = Membership.EnablePasswordRetrieval;
                bool xx = Membership.EnablePasswordReset;
                string xxx = Membership.GetUser(strUsername).GetPassword();
                */
            }


            catch (Exception ex)
            {

            }
            return boolAuthenticated;
        }

        


    }
}