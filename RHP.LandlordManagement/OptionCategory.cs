using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace RHP.LandlordManagement 
{
    public class OptionCategory : Base
    {
        public int? OptionCategoryId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }

        public bool Save()
        {
            bool result = false;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                OptionCategoryDAO propertyOptionCategoryDAO = new OptionCategoryDAO();
                if (this.OptionCategoryId.HasValue)
                {
                    result = propertyOptionCategoryDAO.Update(this, db, transaction);
                }
                else
                {
                    result = propertyOptionCategoryDAO.Insert(this, db, transaction);
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
                result = (new OptionCategoryDAO().Delete(this, db, transaction));
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
