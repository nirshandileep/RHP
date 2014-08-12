using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using RHP.Common;

namespace RHP.LandlordManagement
{
    public class OptionItemDAO
    {
        /*public int? OptionItemId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public bool IsDeleted { get; set; }
        public int OptionId { get; set; }
        */

        public DataSet SelectAllDataset()
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_OptionSelectAll");
            return db.ExecuteDataSet(command);
        }

        public bool Insert(OptionItem OptionItem)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Insert(OptionItem, db, null);
        }

        public bool Insert(OptionItem OptionItem, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_OptionItemInsert");

            db.AddInParameter(command, "Name", DbType.String, OptionItem.Name);
            db.AddInParameter(command, "Description", DbType.String, OptionItem.Description);
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, OptionItem.IsDeleted);
            db.AddInParameter(command, "OptionId", DbType.Int16, OptionItem.OptionId); 
            db.AddInParameter(command, "CreatedBy", DbType.Guid, OptionItem.CreatedBy);
            db.AddInParameter(command, "CreatedDate", DbType.DateTime, OptionItem.CreatedDate);
            db.AddInParameter(command, "UpdatedBy", DbType.Guid, OptionItem.UpdatedBy);
            db.AddInParameter(command, "UpdatedDate", DbType.DateTime, OptionItem.UpdatedDate);


            db.AddOutParameter(command, "OptionItemId", DbType.Int16, 3);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            OptionItem.OptionItemId = Convert.ToInt16(db.GetParameterValue(command, "OptionItemId").ToString());


            return true;
        }

        public bool Update(OptionItem OptionItem)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Update(OptionItem, db, null);
        }

        public bool Update(OptionItem OptionItem, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_OptionItemUpdate");

            db.AddInParameter(command, "OptionItemId", DbType.String, OptionItem.OptionItemId);
            db.AddInParameter(command, "Name", DbType.String, OptionItem.Name);
            db.AddInParameter(command, "Description", DbType.String, OptionItem.Description);
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, OptionItem.IsDeleted);
            db.AddInParameter(command, "CreatedBy", DbType.Guid, OptionItem.CreatedBy);
            db.AddInParameter(command, "CreatedDate", DbType.DateTime, OptionItem.CreatedDate);
            db.AddInParameter(command, "UpdatedBy", DbType.Guid, OptionItem.UpdatedBy);
            db.AddInParameter(command, "UpdatedDate", DbType.DateTime, OptionItem.UpdatedDate);


            db.AddOutParameter(command, "OptionItemId", DbType.Int16, 3);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            OptionItem.OptionItemId = Convert.ToInt16(db.GetParameterValue(command, "OptionItemId").ToString());

            return true;
        }

        public bool Delete(OptionItem OptionItem)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Delete(OptionItem, db, null);
        }

        public bool Delete(OptionItem OptionItem, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_OptionItemDelete");
            db.AddInParameter(command, "OptionItemId", DbType.Guid, OptionItem.OptionItemId);
            db.AddInParameter(command, "IsDeleted", DbType.Guid, OptionItem.IsDeleted);

            db.ExecuteNonQuery(command, transaction);
            return true;
        }
    }
}
