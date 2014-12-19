using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using RHP.Common;
using RHP.Utility;
using System.Data;

namespace RHP.LandlordManagement
{
   public class Option : Base
    {
       public int? OptionId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int OptionCategoryId { get; set; }
        public int ParentOptionId { get; set; }
        public bool IsMultiSelect { get; set; }
        public int Points { get; set; }

        public bool Save()
        {
            bool result = false;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                OptionDAO OptionDAO = new OptionDAO();
                if (this.OptionId.HasValue)
                {
                    result = OptionDAO.Update(this, db, transaction);
                }
                else
                {
                    result = OptionDAO.Insert(this, db, transaction);
                }

                transaction.Commit();
            }
            catch (System.Exception ex)
            {
                transaction.Rollback();
                result = false;
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return result;
        }

        /// <summary>
        /// Delete user from the database.
        /// This only marks the user as IsDeleted
        /// </summary>
        /// <returns></returns>
        public bool Delete()
        {
            bool result = false;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                result = (new OptionDAO().Delete(this, db, transaction));
                transaction.Commit();
            }
            catch (Exception ex)
            {
                transaction.Rollback();
                result = false;
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return result;
        }
    }
}
