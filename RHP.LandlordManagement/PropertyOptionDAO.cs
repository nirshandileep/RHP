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
   public class PropertyOptionDAO
    {
        /*
          public string Name { get; set; }
         public string Description { get; set; }
         public int OptionCategoryId { get; set; }
         public int ParentOptionId { get; set; }
         public bool IsDeleted { get; set; }
         public bool IsMultiSelect { get; set; }
         */

        public DataSet SelectAllDataset()
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_OptionSelectAll");
            return db.ExecuteDataSet(command);
        }

        public bool Insert(PropertyOption propertyOption)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Insert(propertyOption, db, null);
        }

        public bool Insert(PropertyOption propertyOption, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_OptionInsert");

    //         @Name nvarchar(50) = NULL,
    //@Description nvarchar(150) = NULL,
    //@OptionCategoryId int = NULL,
    //@ParentOptionId int = NULL,
    //@IsDeleted bit = NULL,
    //@IsMultiSelect bit = NULL,
    //@OptionId int output

            db.AddInParameter(command, "Name", DbType.String, propertyOption.Name);
            db.AddInParameter(command, "Description", DbType.String, propertyOption.Description);
            db.AddInParameter(command, "OptionCategoryId", DbType.Int16, propertyOption.OptionCategoryId);
            db.AddInParameter(command, "ParentOptionId", DbType.Int16, propertyOption.ParentOptionId);
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, propertyOption.IsDeleted);
            db.AddInParameter(command, "IsMultiSelect", DbType.Boolean, propertyOption.IsMultiSelect);

            db.AddOutParameter(command, "OptionId", DbType.Int16, 3);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            propertyOption.OptionId = Convert.ToInt16(db.GetParameterValue(command, "OptionId").ToString());


            return true;
        }

        public bool Update(PropertyOption propertyOption)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Update(propertyOption, db, null);
        }

        public bool Update(PropertyOption propertyOption, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_OptionUpdate");

            db.AddInParameter(command, "OptionId", DbType.Int16, propertyOption.OptionId);
            db.AddInParameter(command, "Name", DbType.String, propertyOption.Name);
            db.AddInParameter(command, "Description", DbType.String, propertyOption.Description);
            db.AddInParameter(command, "OptionCategoryId", DbType.Int16, propertyOption.OptionCategoryId);
            db.AddInParameter(command, "ParentOptionId", DbType.Int16, propertyOption.ParentOptionId);
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, propertyOption.IsDeleted);
            db.AddInParameter(command, "IsMultiSelect", DbType.Boolean, propertyOption.IsMultiSelect);

            db.AddOutParameter(command, "OptionId_", DbType.Int16, 3);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            propertyOption.OptionId = Convert.ToInt16(db.GetParameterValue(command, "OptionId_").ToString());

            return true;
        }

        public bool Delete(PropertyOption propertyOption)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Delete(propertyOption, db, null);
        }

        public bool Delete(PropertyOption propertyOption, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_OptionDelete");
            db.AddInParameter(command, "OptionId", DbType.Int16, propertyOption.OptionId);
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, propertyOption.IsDeleted);

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
