using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Data;
using System.Web.Security;
using RHP.Common;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace RHP.UserManagement
{
    public class User : Base
    {

        //These properties are required to create the user in ASP Membership tables
        public Guid UserId { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string AccountLocked { get; set; }
        public bool IsFBUser { get; set; }
        public string FBAccessToken { get; set; }
        public string FBUrl { get; set; }
        public string FBProfilePictureURL { get; set; }
        public string Name { get; set; }
        public string StreetAddress { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string BestContactNumber { get; set; }
        public string DriversLicenseNumber { get; set; }
        public string Status { get; set; }
        public string PersonalEmail { get; set; }
        public decimal RatingValue { get; set; }
        public string FBid { get; set; }

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
                    UserId = Guid.Parse(newUser.ProviderUserKey.ToString());
                    
                    if (newUser.IsLockedOut)
                        AccountLocked = "Account Locked Out. Max Password Attempts Reached. Please Contact Admin";

                }
            }
            catch (Exception ex)
            {

            }
            return boolAuthenticated;
        }

        /// <summary>
        /// Logout user from the system
        /// </summary>
        public void LogOut()
        {
            FormsAuthentication.SignOut();
            HttpContext.Current.Response.Redirect("~/Default.aspx", false);
        }

        public void RedirectUserFromLogin(bool isUseDefault = true)
        {
            if (isUseDefault)
            {
                FormsAuthentication.RedirectFromLoginPage(UserName, false);    
            }
            else
            {
                HttpContext.Current.Response.Redirect(this.RedirectToHomePageByRole(),false);
            }
        }

        /// <summary>
        /// Where to redirect after login depending on the user role
        /// </summary>
        /// <returns></returns>
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

        /// <summary>
        /// Delete user from the database.
        /// This only marks the user as IsDeleted
        /// </summary>
        /// <returns></returns>
        public bool Delete()
        {
            bool result = false;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                result = (new UserDAO().Delete(this, db, transaction) && Membership.DeleteUser(this.UserName, false));

            }
            catch (Exception ex)
            {
                transaction.Rollback();
                result = false;
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return result;
        }

        public bool Save()
        {
            bool result = false;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                UserDAO userDao = new UserDAO();
                if (userDao.IsUserExist(this))
                {
                    result = (new UserDAO()).Update(this, db, transaction);
                }
                else
                {
                    result = userDao.Insert(this, db, transaction);
                }

                transaction.Commit();
            }
            catch (System.Exception ex)
            {
                transaction.Rollback();
                result = false;
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return result;
        }

        public bool IsExistingFbUser(string fbid)
        {
            return true;
            //Todo: write the rest
        }
    }
}
