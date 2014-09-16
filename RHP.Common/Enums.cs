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
            IsEmailActivation = 3,
        }

        public enum UserRoles
        {
            Admin,
            Landlord,
            Student,
            SystemAdmin
        }

        public enum ContextType
        { 
            Student = 1,
            Landlord = 2,
        }

        public enum OptionCategory
        {
            Basic_Features = 1,
            Furnished_Rooms = 2,
            Furnished_Kitchen = 3,
            Furnished_Living_Space = 4,
        }
             
    }
}
