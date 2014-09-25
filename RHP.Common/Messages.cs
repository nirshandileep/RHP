using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RHP.Common
{
    public class Messages
    {
        public static readonly string Save_Success = "Successfully Saved";
        public static readonly string Create_Account_Success = "Account Successfully Created. Please check your email and confirm your email address.";
        public static readonly string Update_Success = "Successfully Updated";
        public static readonly string Delete_Success = "Successfully Deleted";

        public static readonly string Save_Unsuccess = "Cannot Save";
        public static readonly string Update_Unsuccess = "Cannot Update";
        public static readonly string Delete_Unsuccess = "Cannot Delete";

        public static readonly string ProfileInfoError = "Current House featue is not Activated. Please enter Profile info first.";

        public static readonly string Sending_Email_Error = "Email sending failed. please contact administrator.";

        public static readonly string Profile_Create_Unsuccess = "Cannot Create Profile";
        public static readonly string Login_Fail = "User Authantication Failed! Please enter Correct Details..";

        public static readonly string Validation_Fail = "Please Validate required Fields";

        public static readonly string Delete_Confirm = "Are you sure you want to delete this record?";
    }
}
