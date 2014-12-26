using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;
using RHP.UserManagement;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using RHP.Utility;

namespace RHP.StudentManagement
{
    public class Student : Base
    {
        public Guid StudentId { get; set; }
        public Guid UserId { get; set; }
        public Guid SchoolId { get; set; }
        public School School { get; set; }
        public User StudentUser { get; set; }
        public string CurentMajor { get; set; }
        public string PreviousSchoolInfo { get; set; }
        public string PreviousSchool { get; set; }
        public int Year { get; set; }
        public int StartYear { get; set; }
        public int StartMonth { get; set; }
        public string Status { get; set; }

        public static Student Select(Guid Userid)
        {
            Student student = Generic.GetByFieldValue<Student>("Userid", Userid.ToString());
             if (student != null)
             {
                 student.School = School.Select(student.SchoolId);
             }
             return student;
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
                StudentDAO studentDAO = new StudentDAO();
                if (studentDAO.IsStudentExist(this))
                {
                    result = studentDAO.Update(this, db, transaction);
                }
                else
                {
                    result = studentDAO.Insert(this, db, transaction);
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
                result = (new StudentDAO().Delete(this, db, transaction));
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
