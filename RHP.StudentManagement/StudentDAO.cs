using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;
using RHP.Common;

namespace RHP.StudentManagement
{
    public class StudentDAO
    {
        public bool Insert(Student student, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_StudentInsert");

            db.AddInParameter(command, "StudentId", DbType.Guid, student.StudentId);
            db.AddInParameter(command, "UserId", DbType.Guid, student.StudentUser.UserId);
            db.AddInParameter(command, "SchoolId", DbType.Guid, student.School.SchoolId);
            db.AddInParameter(command, "IsDeleted", DbType.String, student.IsDeleted);
            db.AddInParameter(command, "CreatedBy", DbType.Guid, student.CreatedBy);
            
            db.AddOutParameter(command, "CreatedDate", DbType.DateTime, 30);

            db.ExecuteNonQuery(command, transaction);

            student.CreatedDate = Convert.ToDateTime(db.GetParameterValue(command, "CreatedDate").ToString());
            student.UpdatedDate = student.CreatedDate;

            return true;
        }

        public bool Update(Student student, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_StudentUpdate");

            db.AddInParameter(command, "StudentId", DbType.Guid, student.StudentId);
            db.AddInParameter(command, "UserId", DbType.Guid, student.StudentUser.UserId);
            db.AddInParameter(command, "SchoolId", DbType.Guid, student.School.SchoolId);
            db.AddInParameter(command, "IsDeleted", DbType.String, student.IsDeleted);
            db.AddInParameter(command, "UpdatedBy", DbType.Guid, student.UpdatedBy);
            db.AddInParameter(command, "UpdatedDate", DbType.DateTime, student.UpdatedDate);

            db.AddOutParameter(command, "UpdatedDate", DbType.DateTime, 30);

            db.ExecuteNonQuery(command, transaction);

            student.CreatedDate = Convert.ToDateTime(db.GetParameterValue(command, "UpdatedDate").ToString());
            student.UpdatedDate = student.CreatedDate;

            return true;
        }

        public bool Delete(Student student, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_StudentDelete");

            db.AddInParameter(command, "StudentId", DbType.Guid, student.StudentId);

            db.ExecuteNonQuery(command, transaction);

            return true;
        }

        /// <summary>
        /// Checks if user record with UserId exist in User table of the database.
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>

        public bool IsUserExist(Student student)
        {

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_Student_IsStudentExist");

            db.AddInParameter(command, "StudentId", DbType.Guid, student.StudentId);
            db.AddOutParameter(command, "IsExist", DbType.Boolean, 1);

            db.ExecuteNonQuery(command);

            return Convert.ToBoolean(db.GetParameterValue(command, "IsExist").ToString());
        }


        public static DataSet Search(StudentSearch searchStudent)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_Student_Search");

            db.AddInParameter(command, "StudentId", DbType.Guid, searchStudent.StudentId);
            db.AddInParameter(command, "SchoolId", DbType.Guid, searchStudent.SchoolId);

            return db.ExecuteDataSet(command);

        }
    }
}
