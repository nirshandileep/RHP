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
    public class PartialUserDAO
    {
        public bool Insert(PartialUser partialUser, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_PartialUserInsert");

            partialUser.PartialUserId = Guid.NewGuid();

            db.AddInParameter(command, "PartialUserId", DbType.Guid, partialUser.PartialUserId);
            db.AddInParameter(command, "Email", DbType.String, partialUser.Email);
            db.AddInParameter(command, "FirstName", DbType.String, partialUser.FirstName);
            db.AddInParameter(command, "MiddleName", DbType.String, partialUser.MiddleName);
            db.AddInParameter(command, "LastName", DbType.String, partialUser.LastName);
            db.AddInParameter(command, "Contact", DbType.String, partialUser.Contact);
            db.AddInParameter(command, "RoleId", DbType.Guid, partialUser.RoleId);
            db.AddInParameter(command, "UserId", DbType.Guid, partialUser.UserId);
            db.AddInParameter(command, "PartialHouseId", DbType.Guid, partialUser.PartialHouseId);
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, partialUser.IsDeleted);
            db.AddInParameter(command, "CreatedBy", DbType.Guid, partialUser.CreatedBy);

            db.AddOutParameter(command, "CreatedDate", DbType.DateTime, 30);

            db.ExecuteNonQuery(command, transaction);

            partialUser.CreatedDate = Convert.ToDateTime(db.GetParameterValue(command, "CreatedDate").ToString());
            partialUser.UpdatedDate = partialUser.CreatedDate;

            return true;
        }

        public bool Update(PartialUser partialUser, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_PartialUserUpdate");


            db.AddInParameter(command, "PartialUserId", DbType.Guid, partialUser.PartialUserId);
            db.AddInParameter(command, "Email", DbType.String, partialUser.Email);
            db.AddInParameter(command, "FirstName", DbType.String, partialUser.FirstName);
            db.AddInParameter(command, "MiddleName", DbType.String, partialUser.MiddleName);
            db.AddInParameter(command, "LastName", DbType.String, partialUser.LastName);
            db.AddInParameter(command, "Contact", DbType.String, partialUser.Contact);
            db.AddInParameter(command, "RoleId", DbType.Guid, partialUser.PartialUserId);
            db.AddInParameter(command, "UserId", DbType.Guid, partialUser.UserId);
            db.AddInParameter(command, "PartialHouseId", DbType.Guid, partialUser.PartialHouseId);
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, partialUser.IsDeleted);
            db.AddInParameter(command, "CreatedBy", DbType.Guid, partialUser.CreatedBy);

            db.AddOutParameter(command, "UpdatedDate", DbType.DateTime, 30);

            //db.ExecuteNonQuery(command, transaction);

            //partialUser.UpdatedDate = Convert.ToDateTime(db.GetParameterValue(command, "UpdatedDate").ToString());

            return true;
        }

        public bool IsPartialUserExist(PartialUser partialUser)
        {

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_PartialUser_IsUserExist");

            db.AddInParameter(command, "PartialUserId", DbType.Guid, partialUser.PartialUserId);
            db.AddOutParameter(command, "IsExist", DbType.Boolean, 1);

            db.ExecuteNonQuery(command);

            return Convert.ToBoolean(db.GetParameterValue(command, "IsExist").ToString());
        }

    }
}
