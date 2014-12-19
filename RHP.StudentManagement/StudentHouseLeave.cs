using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using RHP.Common;

namespace RHP.StudentManagement
{
    public class StudentHouseLeave
    {
        public int RequestID { get; set; }
        public Guid HouseId { get; set; }
        public Guid RequestBy { get; set; }
        public Guid RequestTo { get; set; }
        public int status { get; set; }
        public DateTime RequestDate { get; set; }
        public DateTime ResponseDate { get; set; }

        public static StudentHouseLeave Select(Guid StudentHouseId, Guid RequestTo)
        {
            StudentHouseLeave studentHouseLeave = new StudentHouseLeave();
            studentHouseLeave.HouseId = StudentHouseId;
            studentHouseLeave.RequestTo = RequestTo;

            if (!new StudentHouseLeaveDAO().Select(studentHouseLeave))
            {
                studentHouseLeave = null;
            }

            return studentHouseLeave;
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
                StudentHouseLeaveDAO studentHouseLeaveDAO = new StudentHouseLeaveDAO();

                if (studentHouseLeaveDAO.IsStudentHouseLeaveExist(this))
                {
                    result = studentHouseLeaveDAO.Update(this, db, transaction);
                }
                else
                {
                    result = studentHouseLeaveDAO.Insert(this, db, transaction);
                }

                if (result)
                {
                    transaction.Commit();
                }
                else
                {
                    transaction.Rollback();
                }

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
