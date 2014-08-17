using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;

namespace RHP.StudentManagement
{
    public class School : Base
    {
        public Guid? SchoolId { get; set; }
        public string Name { get; set; }
        public string StreetAddress { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
        public string ContactNumber { get; set; }
        public string Email { get; set; }
        public string Location { get; set; }
        public string WebsiteURL { get; set; }
        public decimal RatingValue { get; set; }
        public int Year { get; set; }

        public static School Select(Guid schoolId)
        {
            School school = Utility.Generic.GetByGUID<School>(schoolId);
            return school;
        }

        public static List<School> SelectAllList()
        {
            return Utility.Generic.GetAll<School>();
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
                SchoolDAO schoolDAO = new SchoolDAO();
                if (this.SchoolId.HasValue)
                {
                    result = schoolDAO.Update(this, db, transaction);
                }
                else
                {
                    result = schoolDAO.Insert(this, db, transaction);
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


    }
}
