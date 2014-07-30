using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Security;
using System.Data.Common;

namespace RHP.UserManagement
{
    public class UserManager
    {

        /// <summary>
        /// Get all the users in the database
        /// </summary>
        /// <returns></returns>
        public MembershipUserCollection UsersList()
        {
            MembershipUserCollection UserCollection = null;
            UserCollection = Membership.GetAllUsers();
            return UserCollection;
        }

        /// <summary>
        /// Gets all the users in the database by the role name
        /// </summary>
        /// <param name="roleName">Role to filter the users from</param>
        /// <returns>All users with the roleName</returns>
        public MembershipUserCollection GetUsersListByRole(RHP.Common.Enums.UserRoles roleName)
        {
            MembershipUserCollection UserCollection = null;
            string[] userList;
            userList = Roles.GetUsersInRole(roleName.ToString());

            foreach (string userName in userList)
            {
                MembershipUser user;
                user = Membership.GetUser(userName);
                UserCollection.Add(user);
            }

            return UserCollection;
        }
    }
}
