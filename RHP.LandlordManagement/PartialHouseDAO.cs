using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using RHP.Common;
using System.Data.Common;
using System.Data;

namespace RHP.LandlordManagement
{
   public class PartialHouseDAO
    {
       public bool Insert(PartialHouse partialHouse)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Insert(partialHouse, db, null);
        }

        public bool Insert(PartialHouse partialHouse, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_PartialHouseInsert");

            partialHouse.PartialHouseId = Guid.NewGuid();
            db.AddInParameter(command, "PartialHouseId", DbType.Guid, partialHouse.PartialHouseId);
            db.AddInParameter(command, "PartialUserId", DbType.Guid, partialHouse.PartialUserId);
            db.AddInParameter(command, "StateId", DbType.Int32, partialHouse.StateId);
            db.AddInParameter(command, "ZipCode", DbType.String, partialHouse.ZipCode);
            db.AddInParameter(command, "City", DbType.String, partialHouse.City);
            db.AddInParameter(command, "Address", DbType.String, partialHouse.Address);
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, partialHouse.IsDeleted);
            db.AddInParameter(command, "CreatedBy", DbType.Guid, partialHouse.CreatedBy);
            db.AddOutParameter(command, "CreatedDate", DbType.DateTime, 30);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            partialHouse.CreatedDate = Convert.ToDateTime(db.GetParameterValue(command, "CreatedDate").ToString());
            partialHouse.UpdatedDate = partialHouse.CreatedDate;

            return true;
        }

        public bool Update(PartialHouse partialHouse)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Update(partialHouse, db, null);
        }

        public bool Update(PartialHouse partialHouse, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_PartialHouseInsert");

            db.AddInParameter(command, "PartialHouseId", DbType.Guid, partialHouse.PartialHouseId);
            db.AddInParameter(command, "PartialUserId", DbType.Guid, partialHouse.PartialUserId);
            db.AddInParameter(command, "StateId", DbType.Int32, partialHouse.StateId);
            db.AddInParameter(command, "ZipCode", DbType.String, partialHouse.ZipCode);
            db.AddInParameter(command, "City", DbType.String, partialHouse.City);
            db.AddInParameter(command, "Address", DbType.String, partialHouse.Address);
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, partialHouse.IsDeleted);
            db.AddInParameter(command, "UpdatedBy", DbType.Guid, partialHouse.CreatedBy);
            db.AddOutParameter(command, "UpdatedDate", DbType.DateTime, 30);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            partialHouse.UpdatedDate = Convert.ToDateTime(db.GetParameterValue(command, "UpdatedDate").ToString());

            return true;
        }

        public bool IsHouseExist(PartialHouse partialHouse)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_PartialHouse_IsHouseExist");

            db.AddInParameter(command, "PartialHouseId", DbType.Guid, partialHouse.PartialHouseId);
            db.AddOutParameter(command, "IsExist", DbType.Boolean, 1);

            db.ExecuteNonQuery(command);

            return Convert.ToBoolean(db.GetParameterValue(command, "IsExist").ToString());
        }
    }
}
