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

        private void login()
        {
            if (authenticateUser())
            {
                try
                {
                    FormsAuthentication.RedirectFromLoginPage(strUsername, false);
                    Response.Redirect(managerole());
                }

                catch (Exception ex)
                {
                    FormsAuthentication.SignOut();
                }
            }
            else
            {
                FormsAuthentication.SignOut();
            }
        }

        protected string managerole()
        {
            string URL = "";
            string[] userroles = Roles.GetRolesForUser(strUsername);
         
            string role = userroles[0].ToString();

            if (role.ToString() == "Admin")
            {
                URL = "~/";
            }
            else if (role.ToString() == "LandLoad")
            {
                URL = "~/Land_load/Land_load_Profile.aspx";
            }
            else if (role.ToString() == "Student")
            {
                URL = "~/Student/Student_Profile.aspx";
            }
            else if (role.ToString() == "SystemAdmin")
            {
                URL = "~/";
            }
            else
            {
                URL = "~/";
            }


            //foreach (var role in userroles)
            //{

            //    if (role.ToString() == "Admin")
            //    {
            //           URL = "~/";
            //        break;
            //    }
            //    else if (role.ToString() == "LandLoad")
            //    {
            //          URL = "~/Land_load/Land_load_Profile.aspx";
            //          break;
            //    }

            //    else if (role.ToString() == "Student")
            //    {
            //        URL = "~/Student/Student_Profile.aspx"; 
            //        break;
            //    }
            //    else if (role.ToString() == "SystemAdmin")
            //    {
            //           URL = "~/";
            //        break;
            //    }
            //    else
            //    {
            //            URL = "~/";
            //        break;
            //    }
            //}

            return URL;
                  
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

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            strUsername = LoginUser.UserName;

            strPassword = LoginUser.Password;
            login();
        }

        


    }
}