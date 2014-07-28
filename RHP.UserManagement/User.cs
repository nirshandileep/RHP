using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Data;
using System.Web.Security;
using RHP.Common;

namespace RHP.UserManagement
{
    public class User : Base
    {
        public string UserId { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string AccountLocked { get; set; }
        public string FBAccessToken { get; set; }

        private List<string> rolesList;
        public List<string> RolesList 
        {
            get 
            {
                if (rolesList == null)
                {
                    rolesList = new List<string>();
                }
                
                rolesList = Roles.GetRolesForUser(UserName).ToList<string>();
                return rolesList;
            }
        }
             

        public bool AuthenticateUser()
        {
            string success = "";
            bool boolAuthenticated = false;
            try
            {
                // Authenticate Credentials
                boolAuthenticated = Membership.ValidateUser(UserName, Password);
                
                if (boolAuthenticated)
                    success = "True";
                else
                    success = "False";

                if (success == "True")
                {

                    MembershipUser newUser;
                    newUser = Membership.GetUser(UserName);

                    UserId = newUser.ProviderUserKey.ToString();


                    if (newUser.IsLockedOut)
                        AccountLocked = "Account Locked Out. Max Password Attempts Reached. Please Contact Admin";

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

        public void LogOut()
        {
            FormsAuthentication.SignOut();
            HttpContext.Current.Response.Redirect("~/Default.aspx");
        }

        public void RedirectUserFromLogin(bool isUseDefault = true)
        {
            if (isUseDefault)
            {
                FormsAuthentication.RedirectFromLoginPage(UserName, false);    
            }
            else
            {
                HttpContext.Current.Response.Redirect(this.RedirectToHomePageByRole());
            }
        }

        public string RedirectToHomePageByRole()
        {
            string URL = "";
            string role = "";

            if (RolesList != null || rolesList.Count > 0)
            {
                role = RolesList[0].ToString();
            }

            if (role.ToString() == "Admin")
            {
                URL = "~/Administrator/Default.aspx";
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

            return URL;

        }

        public MembershipUserCollection UsersList()
        {
           
            MembershipUserCollection UserCollection = null;
            UserCollection = Membership.GetAllUsers();
            //Roles.GetUsersInRole("admin");
            return UserCollection;
        }

    }
}
