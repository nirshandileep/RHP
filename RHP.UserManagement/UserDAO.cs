using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;
using RHP.Common;

namespace RHP.UserManagement
{
    public class UserDAO
    {
        public bool Insert(User users, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_UserInsert");

            db.AddInParameter(command, "UserId", DbType.Guid, users.UserId);
            db.AddInParameter(command, "IsFBUser", DbType.Boolean, users.IsFBUser);
            db.AddInParameter(command, "FBAccessToken", DbType.String, users.FBAccessToken);
            db.AddInParameter(command, "FBUrl", DbType.String, users.FBUrl);
            db.AddInParameter(command, "FBProfilePictureURL", DbType.String, users.FBProfilePictureURL);
            db.AddInParameter(command, "FirstName", DbType.String, users.FirstName);
            db.AddInParameter(command, "MiddleName", DbType.String, users.MiddleName);
            db.AddInParameter(command, "LastName", DbType.String, users.LastName);
            db.AddInParameter(command, "StreetAddress", DbType.String, users.StreetAddress);
            db.AddInParameter(command, "City", DbType.String, users.City);
            db.AddInParameter(command, "StateId", DbType.Int32, users.StateId);
            db.AddInParameter(command, "Zip", DbType.String, users.Zip);
            db.AddInParameter(command, "DateOfBirth", DbType.Date, users.DateOfBirth);
            db.AddInParameter(command, "BestContactNumber", DbType.String, users.BestContactNumber);
            db.AddInParameter(command, "DriversLicenseNumber", DbType.String, users.DriversLicenseNumber);
            
            db.AddInParameter(command, "Status", DbType.String, users.Status);//To be changed
            db.AddInParameter(command, "PersonalEmail", DbType.String, users.PersonalEmail);
            db.AddInParameter(command, "CreatedBy", DbType.Guid, users.CreatedBy);
            db.AddInParameter(command, "RatingValue", DbType.Decimal, users.RatingValue);
            db.AddInParameter(command, "FBid", DbType.String, users.FBid);
            db.AddInParameter(command, "Gender", DbType.String, users.Gender);

            db.AddOutParameter(command, "CreatedDate", DbType.DateTime, 30);

            db.ExecuteNonQuery(command, transaction);

            users.CreatedDate = Convert.ToDateTime(db.GetParameterValue(command, "CreatedDate").ToString());
            users.UpdatedDate = users.CreatedDate;

            return true;
        }

        public bool Update(User users, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_UserUpdate");

            db.AddInParameter(command, "UserId", DbType.Guid, users.UserId);
            db.AddInParameter(command, "IsFBUser", DbType.Boolean, users.IsFBUser);
            db.AddInParameter(command, "FBAccessToken", DbType.String, users.FBAccessToken);
            db.AddInParameter(command, "FBUrl", DbType.String, users.FBUrl);
            db.AddInParameter(command, "FBProfilePictureURL", DbType.String, users.FBProfilePictureURL);
            db.AddInParameter(command, "FirstName", DbType.String, users.FirstName);
            db.AddInParameter(command, "MiddleName", DbType.String, users.MiddleName);
            db.AddInParameter(command, "LastName", DbType.String, users.LastName);
            db.AddInParameter(command, "StreetAddress", DbType.String, users.StreetAddress);
            db.AddInParameter(command, "City", DbType.String, users.City);
            db.AddInParameter(command, "StateId", DbType.String, users.StateId);
            db.AddInParameter(command, "Zip", DbType.String, users.Zip);
            db.AddInParameter(command, "DateOfBirth", DbType.Date, users.DateOfBirth);
            db.AddInParameter(command, "BestContactNumber", DbType.String, users.BestContactNumber);
            db.AddInParameter(command, "DriversLicenseNumber", DbType.String, users.DriversLicenseNumber);

            db.AddInParameter(command, "Status", DbType.String, users.Status);//To be changed
            db.AddInParameter(command, "PersonalEmail", DbType.String, users.PersonalEmail);
            db.AddInParameter(command, "UpdatedBy", DbType.Guid, users.UpdatedBy);
            db.AddInParameter(command, "LastUpdatedDate", DbType.DateTime, users.UpdatedDate);
            db.AddInParameter(command, "RatingValue", DbType.Decimal, users.RatingValue);
            db.AddOutParameter(command, "UpdatedDate", DbType.DateTime, 30);
            db.AddInParameter(command, "Gender", DbType.String, users.Gender);

            db.ExecuteNonQuery(command, transaction);

            users.UpdatedDate = Convert.ToDateTime(db.GetParameterValue(command, "UpdatedDate").ToString());

            return true;
        }

        public bool Delete(User user, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_UserDelete");

            db.AddInParameter(command, "UpdatedBy", DbType.Guid, user.UpdatedBy);
            db.AddInParameter(command, "UserId", DbType.Guid, user.UserId);

            db.ExecuteNonQuery(command, transaction);

            user.UpdatedDate = Convert.ToDateTime(db.GetParameterValue(command, "UpdatedDate").ToString());

            return true;
        }

        /// <summary>
        /// Checks if user record with UserId exist in User table of the database.
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public bool IsUserExist(User user)
        {

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_User_IsUserExist");

            db.AddInParameter(command, "UserId", DbType.Guid, user.UserId);
            db.AddOutParameter(command, "IsExist", DbType.Boolean, 1);

            db.ExecuteNonQuery(command);

            return Convert.ToBoolean(db.GetParameterValue(command, "IsExist").ToString());
        }

        
        public bool IsFBUserExist(string FbId)
        {

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_User_IsFBUserExist");

            db.AddInParameter(command, "FbId", DbType.String, FbId);
            db.AddOutParameter(command, "IsExist", DbType.Boolean, 1);

            db.ExecuteNonQuery(command);

            return Convert.ToBoolean(db.GetParameterValue(command, "IsExist").ToString());
        }


        public string GetUsernameByFBId(string FbId)
        {

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_UserSelectUsernameByFbId");

            db.AddInParameter(command, "FbId", DbType.String, FbId);
            db.AddOutParameter(command, "Username", DbType.String, 50);

            db.ExecuteNonQuery(command);

            return Convert.ToString(db.GetParameterValue(command, "Username").ToString());
        }


        public DataSet SelectAll()
        {

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_UserSelectAll");
            return db.ExecuteDataSet(command);
        }
    }
}
