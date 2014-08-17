using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;
using RHP.Common;
using System.Data.Common;

namespace RHP.LandlordManagement
{
   public class OptionDAO
    {

        public DataSet SelectAllDataset()
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_OptionSelectAll");
            return db.ExecuteDataSet(command);
        }

        public bool Insert(Option Option)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Insert(Option, db, null);
        }

        public bool Insert(Option Option, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_OptionInsert");

            db.AddInParameter(command, "Name", DbType.String, Option.Name);
            db.AddInParameter(command, "Description", DbType.String, Option.Description);
            db.AddInParameter(command, "OptionCategoryId", DbType.Int16, Option.OptionCategoryId);
            db.AddInParameter(command, "ParentOptionId", DbType.Int16, Option.ParentOptionId);
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, Option.IsDeleted);
            db.AddInParameter(command, "IsMultiSelect", DbType.Boolean, Option.IsMultiSelect);

            db.AddOutParameter(command, "OptionId", DbType.Int16, 3);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            Option.OptionId = Convert.ToInt16(db.GetParameterValue(command, "OptionId").ToString());


            return true;
        }

        public bool Update(Option Option)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Update(Option, db, null);
        }

        public bool Update(Option Option, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_OptionUpdate");

            db.AddInParameter(command, "OptionId", DbType.Int16, Option.OptionId);
            db.AddInParameter(command, "Name", DbType.String, Option.Name);
            db.AddInParameter(command, "Description", DbType.String, Option.Description);
            db.AddInParameter(command, "OptionCategoryId", DbType.Int16, Option.OptionCategoryId);
            db.AddInParameter(command, "ParentOptionId", DbType.Int16, Option.ParentOptionId);
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, Option.IsDeleted);
            db.AddInParameter(command, "IsMultiSelect", DbType.Boolean, Option.IsMultiSelect);

            db.AddOutParameter(command, "OptionId_", DbType.Int16, 3);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            Option.OptionId = Convert.ToInt16(db.GetParameterValue(command, "OptionId_").ToString());

            return true;
        }

        public bool Delete(Option Option)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Delete(Option, db, null);
        }

        public bool Delete(Option Option, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_OptionDelete");
            db.AddInParameter(command, "OptionId", DbType.Int16, Option.OptionId);
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, Option.IsDeleted);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }
            return true;

           
        }
    }
}
