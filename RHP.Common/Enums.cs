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

            /// <summary>
            /// Set this to true in database to get information to 
            /// </summary>
            ENABLE_DEVELOPER_EMAILS = 9,

            /// <summary>
            /// Can used to obtain comma selerated email addresses
            /// </summary>
            DEVELOPER_EMAIL = 10,

            /// <summary>
            /// Fb return url set from database
            /// </summary>
            FB_REDIRECT_URL = 11,

            /// <summary>
            /// Google analytics code
            /// </summary>
            GOOGLE_ANALYTICS = 12,
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
            Photo_Comment = 5,
            Document_Comment = 6,
        }

        public enum CommentType
        {

            Comment = 1,
            Feedback = 2,
            Photo = 3,
            Document = 4,
        }

        public enum HouseType
        {
            Dorms = 1,
            Appartment = 2,
            Condo = 3,
            FamilyHousing = 4,
            House = 5,
            OffCampusAppartment = 6,
            OffCampusCondo = 7,
            TownHome = 8,
            OffCampusHouse = 9,
        }

        public enum LandlordType
        {
            SimpleLandlord = 1,
            CorporateLandlord = 2,
        }
    }
}
