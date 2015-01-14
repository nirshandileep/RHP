using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;
using RHP.Utility;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;

namespace RHP.StudentManagement
{
    public class Spotlight : Base
    {

        public int SpotlightId { get; set; }
        public Guid UserId { get; set; }
        public string Awards { get; set; }
        public string Achievements { get; set; }
        public string CurentGPA { get; set; }
        public int? OraganizationId { get; set; }
        public string Involvments { get; set; }
        public int? FraternityId { get; set; }
        public int? SoroityId { get; set; }
        public int? GreakOrganizationId { get; set; }
        public int? GreekHonorSocitiesId { get; set; }

        public static Spotlight Select(Guid Userid)
        {
            Spotlight spotlight = Generic.GetByFieldValue<Spotlight>("Userid", Userid.ToString());
            
            return spotlight;
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
                SpotlightDAO spotlightDAO = new SpotlightDAO();
                if (spotlightDAO.IsSpotlightExist(this))
                {
                    result = spotlightDAO.Update(this, db, transaction);
                }
                else
                {
                    result = spotlightDAO.Insert(this, db, transaction);
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
                result = (new SpotlightDAO().Delete(this, db, transaction));
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
