using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;
using RHP.UserManagement;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using RHP.Utility;

namespace RHP.LandlordManagement
{
    public class Landlord : Base
    {
        public Guid LandlordId { get; set; }
        public User user { get; set; }
        public string LandlordName { get; set; }


        public static Landlord Select(Guid Userid)
        {
            Landlord landlord = Generic.GetByFieldValue<Landlord>("Userid", Userid.ToString());

            return landlord;
        }


        public bool Save()
        {
            bool result = false;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                LandlordDAO landlordDAO = new LandlordDAO();
                if (landlordDAO.IsLandlordExist(this))
                {
                    result = landlordDAO.Update(this, db, transaction);
                }
                else
                {
                    result = landlordDAO.Insert(this, db, transaction);
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
                result = (new LandlordDAO().Delete(this, db, transaction));
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
