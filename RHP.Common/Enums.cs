using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RHP.Common
{
    public class Enums
    {
        public enum SystemConfig
        {
            FacebookAppID = 1,
            FacebookAppSecret = 2,
        }

        public enum UserRoles
        {
            Admin,
            Landlord,
            Student,
            SystemAdmin
        }
    }
}
