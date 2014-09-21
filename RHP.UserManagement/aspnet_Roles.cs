using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Utility;

namespace RHP.UserManagement
{
   public class aspnet_Roles
    {
      public Guid ApplicationId { get; set;}
      public Guid RoleId { get; set;}
      public string RoleName { get; set;}
      public string LoweredRoleName { get; set;}
      public string Description { get; set; }

       //--------Role Names-----------
       //RoleName	LoweredRoleName
       // Admin	admin
       // Landlord	landlord
       // Student	student
       // SystemAdmin	systemadmin


          public static aspnet_Roles Select(string RoleName)
          {
              aspnet_Roles aspnet_Roles_ = Generic.GetByFieldValue<aspnet_Roles>("RoleName", RoleName);
             
              return aspnet_Roles_;
          }

    }
}
