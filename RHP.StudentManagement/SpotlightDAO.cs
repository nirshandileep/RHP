using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using RHP.Common;

namespace RHP.StudentManagement
{
   public class SpotlightDAO
    {

        public DataSet SelectAllDataset()
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_SpotlightSelectAll");
            return db.ExecuteDataSet(command);
        }

        public bool Insert(Spotlight spotlight, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_SpotlightInsert");

            db.AddInParameter(command, "UserId", DbType.Guid, spotlight.UserId);
            db.AddInParameter(command, "Awards", DbType.String, spotlight.Awards);
            db.AddInParameter(command, "Achievements", DbType.String, spotlight.Achievements);
            db.AddInParameter(command, "CurentGPA", DbType.String, spotlight.CurentGPA);
            db.AddInParameter(command, "Oraganizations", DbType.String, spotlight.Oraganizations);
            db.AddInParameter(command, "Involvments", DbType.String, spotlight.Involvments);
            db.AddInParameter(command, "Fraternity", DbType.String, spotlight.Fraternity);
            db.AddInParameter(command, "Soroity", DbType.String, spotlight.Soroity);
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, spotlight.IsDeleted);
            db.AddInParameter(command, "CreatedBy", DbType.Guid, spotlight.CreatedBy);

            db.AddOutParameter(command, "CreatedDate", DbType.DateTime, 30);

            db.ExecuteNonQuery(command, transaction);

            spotlight.CreatedDate = Convert.ToDateTime(db.GetParameterValue(command, "CreatedDate").ToString());
            spotlight.UpdatedDate = spotlight.CreatedDate;

            return true;
        }

        public bool Update(Spotlight spotlight, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_SpotlightUpdate");

            db.AddInParameter(command, "UserId", DbType.Guid, spotlight.UserId);
            db.AddInParameter(command, "Awards", DbType.String, spotlight.Awards);
            db.AddInParameter(command, "Achievements", DbType.String, spotlight.Achievements);
            db.AddInParameter(command, "CurentGPA", DbType.String, spotlight.CurentGPA);
            db.AddInParameter(command, "Oraganizations", DbType.String, spotlight.Oraganizations);
            db.AddInParameter(command, "Involvments", DbType.String, spotlight.Involvments);
            db.AddInParameter(command, "Fraternity", DbType.String, spotlight.Fraternity);
            db.AddInParameter(command, "Soroity", DbType.String, spotlight.Soroity);
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, spotlight.IsDeleted);
            db.AddInParameter(command, "UpdatedBy", DbType.Guid, spotlight.UpdatedBy);

            db.AddOutParameter(command, "UpdatedDate", DbType.DateTime, 30);

            db.ExecuteNonQuery(command, transaction);

            spotlight.CreatedDate = Convert.ToDateTime(db.GetParameterValue(command, "UpdatedDate").ToString());
            spotlight.UpdatedDate = spotlight.CreatedDate;

            return true;
        }

        public bool Delete(Spotlight spotlight, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_SpotlightDelete");

            db.AddInParameter(command, "SpotlightId", DbType.Guid, spotlight.SpotlightId);
            db.AddInParameter(command, "UpdatedBy", DbType.Guid, spotlight.UpdatedBy);

            db.ExecuteNonQuery(command, transaction);

            return true;
        }

        /// <summary>
        /// Checks if user record with UserId exist in User table of the database.
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>

        public bool IsSpotlightExist(Spotlight spotlight)
        {

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_Spotlight_IsSpotlightExist");

            db.AddInParameter(command, "UserId", DbType.Guid, spotlight.UserId);
            db.AddOutParameter(command, "IsExist", DbType.Boolean, 1);

            db.ExecuteNonQuery(command);

            return Convert.ToBoolean(db.GetParameterValue(command, "IsExist").ToString());
        }

    }
}
