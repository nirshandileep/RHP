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
    public class PropertyOptionItemDAO
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

        public bool Insert(PropertyOptionItem propertyOptionItem)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Insert(propertyOptionItem, db, null);
        }

        public bool Insert(PropertyOptionItem propertyOptionItem, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_OptionItemInsert");

            db.AddInParameter(command, "Name", DbType.String, propertyOptionItem.Name);
            db.AddInParameter(command, "Description", DbType.String, propertyOptionItem.Description);
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, propertyOptionItem.IsDeleted);
            db.AddInParameter(command, "OptionId", DbType.Int16, propertyOptionItem.OptionId); 
            db.AddInParameter(command, "CreatedBy", DbType.Guid, propertyOptionItem.CreatedBy);
            db.AddInParameter(command, "CreatedDate", DbType.DateTime, propertyOptionItem.CreatedDate);
            db.AddInParameter(command, "UpdatedBy", DbType.Guid, propertyOptionItem.UpdatedBy);
            db.AddInParameter(command, "UpdatedDate", DbType.DateTime, propertyOptionItem.UpdatedDate);


            db.AddOutParameter(command, "OptionItemId", DbType.Int16, 3);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            propertyOptionItem.OptionItemId = Convert.ToInt16(db.GetParameterValue(command, "OptionItemId").ToString());


            return true;
        }

        public bool Update(PropertyOptionItem propertyOptionItem)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Update(propertyOptionItem, db, null);
        }

        public bool Update(PropertyOptionItem propertyOptionItem, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_OptionItemUpdate");

            db.AddInParameter(command, "OptionItemId", DbType.String, propertyOptionItem.OptionItemId);
            db.AddInParameter(command, "Name", DbType.String, propertyOptionItem.Name);
            db.AddInParameter(command, "Description", DbType.String, propertyOptionItem.Description);
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, propertyOptionItem.IsDeleted);
            db.AddInParameter(command, "CreatedBy", DbType.Guid, propertyOptionItem.CreatedBy);
            db.AddInParameter(command, "CreatedDate", DbType.DateTime, propertyOptionItem.CreatedDate);
            db.AddInParameter(command, "UpdatedBy", DbType.Guid, propertyOptionItem.UpdatedBy);
            db.AddInParameter(command, "UpdatedDate", DbType.DateTime, propertyOptionItem.UpdatedDate);


            db.AddOutParameter(command, "OptionItemId", DbType.Int16, 3);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            propertyOptionItem.OptionItemId = Convert.ToInt16(db.GetParameterValue(command, "OptionItemId").ToString());

            return true;
        }

        public bool Delete(PropertyOptionItem propertyOptionItem)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Delete(propertyOptionItem, db, null);
        }

        public bool Delete(PropertyOptionItem propertyOptionItem, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_OptionItemDelete");
            db.AddInParameter(command, "OptionItemId", DbType.Guid, propertyOptionItem.OptionItemId);
            db.AddInParameter(command, "IsDeleted", DbType.Guid, propertyOptionItem.IsDeleted);

            db.ExecuteNonQuery(command, transaction);
            return true;
        }
    }
}
