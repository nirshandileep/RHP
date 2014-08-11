using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using RHP.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;

namespace RHP.LandlordManagement
{
   public class PropertyOptionCategoryDAO
    {
       /*
        public int? OptionCategoryId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
       */

        public DataSet SelectAllDataset()
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_OptionCategorySelectAll");
            return db.ExecuteDataSet(command);
        }

        public bool Insert(PropertyOptionCategory propertyOptionCategory)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Insert(propertyOptionCategory, db, null);
        }

        public bool Insert(PropertyOptionCategory propertyOptionCategory, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_OptionCategoryInsert");

            db.AddInParameter(command, "Name", DbType.String, propertyOptionCategory.Name);
            db.AddInParameter(command, "Description", DbType.String, propertyOptionCategory.Description);
            db.AddInParameter(command, "OptionCategoryId", DbType.Int16, propertyOptionCategory.OptionCategoryId);
            db.AddInParameter(command, "CreatedBy", DbType.Guid, propertyOptionCategory.CreatedBy);
            db.AddInParameter(command, "CreatedDate", DbType.DateTime, propertyOptionCategory.CreatedDate);

            db.AddOutParameter(command, "OptionCategoryId", DbType.Int16, 3);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            propertyOptionCategory.OptionCategoryId = Convert.ToInt16(db.GetParameterValue(command, "OptionCategoryId").ToString());


            return true;
        }

        public bool Update(PropertyOptionCategory propertyOptionCategory)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Update(propertyOptionCategory, db, null);
        }

        public bool Update(PropertyOptionCategory propertyOptionCategory, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_OptionCategoryUpdate");

            db.AddInParameter(command, "Name", DbType.String, propertyOptionCategory.Name);
            db.AddInParameter(command, "Description", DbType.String, propertyOptionCategory.Description);
            db.AddInParameter(command, "OptionCategoryId", DbType.Int16, propertyOptionCategory.OptionCategoryId);
            db.AddInParameter(command, "UpdatedBy", DbType.Guid, propertyOptionCategory.CreatedBy);
            db.AddInParameter(command, "UpdatedDate", DbType.DateTime, propertyOptionCategory.CreatedDate);

            db.AddOutParameter(command, "OptionCategoryId", DbType.Int16, 3);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            propertyOptionCategory.OptionCategoryId = Convert.ToInt16(db.GetParameterValue(command, "OptionCategoryId").ToString());


            return true;
        }

        public bool Delete(PropertyOptionCategory ropertyOptionCategory)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Delete(ropertyOptionCategory, db, null);
        }

        public bool Delete(PropertyOptionCategory ropertyOptionCategory, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_OptionCategoryDelete");
            db.AddInParameter(command, "OptionCategoryId", DbType.Guid, ropertyOptionCategory.OptionCategoryId);


            db.ExecuteNonQuery(command, transaction);
            return true;
        }
    }
}

