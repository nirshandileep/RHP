using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;
using RHP.Common;

namespace RHP.LandlordManagement
{
    public class LandlordDAO
    {
        public bool Insert(Landlord landlord, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_LandlordInsert");

            db.AddInParameter(command, "LandlordId", DbType.Guid, landlord.LandlordId);
            db.AddInParameter(command, "UserId", DbType.Guid, landlord.user.UserId);
            db.AddInParameter(command, "LandlordName", DbType.Guid, landlord.LandlordName);
            db.AddInParameter(command, "IsDeleted", DbType.String, landlord.IsDeleted);
            db.AddInParameter(command, "CreatedBy", DbType.String, landlord.CreatedBy);
            db.AddInParameter(command, "CreatedDate", DbType.DateTime, landlord.CreatedDate);
            db.AddInParameter(command, "UpdatedBy", DbType.String,landlord.UpdatedBy);
            db.AddInParameter(command, "UpdatedDate", DbType.DateTime, landlord.UpdatedDate);

            db.AddOutParameter(command, "CreatedDate", DbType.DateTime, 30);

            db.ExecuteNonQuery(command, transaction);

            landlord.CreatedDate = Convert.ToDateTime(db.GetParameterValue(command, "CreatedDate").ToString());
            landlord.UpdatedDate = landlord.CreatedDate;

            return true;
        }

        public bool Update(Landlord landlord, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_LandlordUpdate");

            db.AddInParameter(command, "LandlordId", DbType.Guid, landlord.LandlordId);
            db.AddInParameter(command, "UserId", DbType.Guid, landlord.user.UserId);
            db.AddInParameter(command, "LandlordName", DbType.Guid, landlord.LandlordName);
            db.AddInParameter(command, "IsDeleted", DbType.String, landlord.IsDeleted);
            db.AddInParameter(command, "CreatedBy", DbType.String, landlord.CreatedBy);
            db.AddInParameter(command, "CreatedDate", DbType.DateTime, landlord.CreatedDate);
            db.AddInParameter(command, "UpdatedBy", DbType.String,landlord.UpdatedBy);
            db.AddInParameter(command, "UpdatedDate", DbType.DateTime, landlord.UpdatedDate);

            db.AddOutParameter(command, "CreatedDate", DbType.DateTime, 30);

            db.ExecuteNonQuery(command, transaction);

            landlord.CreatedDate = Convert.ToDateTime(db.GetParameterValue(command, "CreatedDate").ToString());
            landlord.UpdatedDate = landlord.CreatedDate;

            return true;
        }

        public bool Delete(Landlord landlord, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_LandlordDelete");

            db.AddInParameter(command, "LandlordId", DbType.Guid, landlord.LandlordId);

            db.ExecuteNonQuery(command, transaction);

            return true;
        }

        /// <summary>
        /// Checks if user record with UserId exist in User table of the database.
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>

        public bool IsLandlordExist(Landlord landlord)
        {

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_Student_IsStudentExist");

            db.AddInParameter(command, "StudentId", DbType.Guid, landlord.LandlordId);
            db.AddOutParameter(command, "IsExist", DbType.Boolean, 1);

            db.ExecuteNonQuery(command);

            return Convert.ToBoolean(db.GetParameterValue(command, "IsExist").ToString());
        }

        public static DataSet Search(LandlordSearch landlordSearch)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_LandlordSelect");

            db.AddInParameter(command, "LandlordId", DbType.Guid, landlordSearch.LandlordId);

            return db.ExecuteDataSet(command);

        }
    }
}
