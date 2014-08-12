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
   public class OptionCategoryDAO
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

        public bool Insert(OptionCategory OptionCategory)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Insert(OptionCategory, db, null);
        }

        public bool Insert(OptionCategory OptionCategory, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_OptionCategoryInsert");

            db.AddInParameter(command, "Name", DbType.String, OptionCategory.Name);
            db.AddInParameter(command, "Description", DbType.String, OptionCategory.Description);
            db.AddInParameter(command, "OptionCategoryId", DbType.Int16, OptionCategory.OptionCategoryId);
            db.AddInParameter(command, "CreatedBy", DbType.Guid, OptionCategory.CreatedBy);
            db.AddInParameter(command, "CreatedDate", DbType.DateTime, OptionCategory.CreatedDate);

            db.AddOutParameter(command, "OptionCategoryId", DbType.Int16, 3);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            OptionCategory.OptionCategoryId = Convert.ToInt16(db.GetParameterValue(command, "OptionCategoryId").ToString());


            return true;
        }

        public bool Update(OptionCategory OptionCategory)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Update(OptionCategory, db, null);
        }

        public bool Update(OptionCategory OptionCategory, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_OptionCategoryUpdate");

            db.AddInParameter(command, "Name", DbType.String, OptionCategory.Name);
            db.AddInParameter(command, "Description", DbType.String, OptionCategory.Description);
            db.AddInParameter(command, "OptionCategoryId", DbType.Int16, OptionCategory.OptionCategoryId);
            db.AddInParameter(command, "UpdatedBy", DbType.Guid, OptionCategory.CreatedBy);
            db.AddInParameter(command, "UpdatedDate", DbType.DateTime, OptionCategory.CreatedDate);

            db.AddOutParameter(command, "OptionCategoryId", DbType.Int16, 3);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            OptionCategory.OptionCategoryId = Convert.ToInt16(db.GetParameterValue(command, "OptionCategoryId").ToString());


            return true;
        }

        public bool Delete(OptionCategory ropertyOptionCategory)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Delete(ropertyOptionCategory, db, null);
        }

        public bool Delete(OptionCategory ropertyOptionCategory, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_OptionCategoryDelete");
            db.AddInParameter(command, "OptionCategoryId", DbType.Guid, ropertyOptionCategory.OptionCategoryId);


            db.ExecuteNonQuery(command, transaction);
            return true;
        }
    }
}

