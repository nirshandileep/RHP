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
        public static readonly string Delete_success = "Successfully Removed! ";
        public static readonly string Delete_Unsuccess = "Cannot Remove! Please try Again.";

        public static readonly string Allowed_fileExtension = "Allowed Only -  .jpg  .jpeg  .png";
        public static readonly string Allowed_MaxImageSize = "Max Image Size : 6 MB";
        public static readonly string ProfileInfoError = "House featue is not Activated. Please enter Profile info first.";

        public static readonly string Sending_Email_Error = "Email sending failed. please contact administrator.";
        public static readonly string Sending_Email_success = "Your message successfully sent.";
        public static readonly string Request_Email_success = "Your Request successfully sent.Please check your email and confirm your email address.";
        public static readonly string Profile_Create_Unsuccess = "Cannot Create Profile";
        public static readonly string Login_Fail = "User Authantication Failed! Please enter Correct Details..";

        public static readonly string Validation_Fail = "Please Validate required Fields";

        public static readonly string Delete_Confirm = "Are you sure you want to delete this record?";
        public static readonly string EmailExist = "Facebook Email Address Already registerd!";

        public static readonly string LeaveCurrentHouseRequestSuccess = "Request Successfully Sent!";
        public static readonly string LeaveCurrentHouseResponseSuccess = "Current House Successfully Removed!";
        public static readonly string LeaveCurrentHouseResponseUnSuccess = "Cannot Remove Current House! Please try Again.";

        public static readonly string CurrentHouseNoRecords = "No Records found!.";
        public static readonly string CurrentHouseNotPartialUser = "Landlord is not a partial Landlord.Cannnot Edit Landlord Info.!.";
        public static readonly string CurrentHouseNotPartialHouse = "Current House is not a partial House.Cannnot Edit House Info.!.";

        public static readonly string EmailAddressExist = "Email Address Exist!.";

        public static readonly string RejectLeaveCurrentHouseResponseSuccess = "Request to Leave Current House Successfully Rejected!";
    }
}
