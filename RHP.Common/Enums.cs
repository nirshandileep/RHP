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
            SMTP_HOST = 4,
            SMTP_PORT = 5,
            SMTP_FROM_EMAIL = 6,
            SMTP_FROM_EMAIL_PASSWORD = 7,
            SITEURL = 8,
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

        public enum ContextSubType
        {
            House = 1
        }

        public enum OptionCategory
        {
            Basic_Features = 1,
            Furnished_Rooms = 2,
            Furnished_Kitchen = 3,
            Furnished_Living_Space = 4,
        }

        public enum PhotoCategory
        {
            Profile_Picture = 1,
            Cover_Picture = 2,
            House_Picture = 3,
            House_Life_Picture = 4,
        }
    }
}
