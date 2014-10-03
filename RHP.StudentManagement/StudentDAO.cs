using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;
using RHP.Common;
using RHP.UserManagement;

namespace RHP.StudentManagement
{
    public class StudentDAO
    {
        public DataSet SelectAllDataset()
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_StudentSelectAll");
            return db.ExecuteDataSet(command);
        }

        public bool Insert(Student student, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_StudentInsert");


           // <StudentId, uniqueidentifier,>
           //,<UserId, uniqueidentifier,>
           //,<SchoolId, uniqueidentifier,>
           //,<Year, int,>
           //,<StartYear, int,>
           //,<StartMonth, int,>
           //,<Status, nvarchar(50),>
           //,<CurentMajor, nvarchar(256),>
           //,<PreviousSchoolInfo, nvarchar(50),>
           //,<PreviousSchool, nvarchar(256),>
           //,<IsDeleted, bit,>
           //,<CreatedBy, uniqueidentifier,>
           //,<CreatedDate, datetime,>
           //,<UpdatedBy, uniqueidentifier,>
           //,<UpdatedDate, datetime,>)


            db.AddInParameter(command, "StudentId", DbType.Guid, Guid.NewGuid());
            db.AddInParameter(command, "UserId", DbType.Guid, student.StudentUser.UserId);
            db.AddInParameter(command, "SchoolId", DbType.Guid, student.School.SchoolId);
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, student.IsDeleted);
            db.AddInParameter(command, "Year", DbType.String, student.School.Year);
            db.AddInParameter(command, "StartYear", DbType.String, student.StartYear);
            db.AddInParameter(command, "StartMonth", DbType.String, student.StartMonth);
            db.AddInParameter(command, "Status", DbType.String, student.Status);
            db.AddInParameter(command, "PreviousSchoolInfo", DbType.String, student.PreviousSchoolInfo);
            db.AddInParameter(command, "PreviousSchool", DbType.String, student.PreviousSchool);
            db.AddInParameter(command, "CurentMajor", DbType.String, student.CurentMajor);  
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
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, student.IsDeleted);
            db.AddInParameter(command, "Year", DbType.Int16, student.School.Year);
            db.AddInParameter(command, "StartYear", DbType.String, student.StartYear);
            db.AddInParameter(command, "StartMonth", DbType.String, student.StartMonth);
            db.AddInParameter(command, "Status", DbType.String, student.Status);
            db.AddInParameter(command, "PreviousSchoolInfo", DbType.String, student.PreviousSchoolInfo);
            db.AddInParameter(command, "PreviousSchool", DbType.String, student.PreviousSchool);
            db.AddInParameter(command, "CurentMajor", DbType.String, student.CurentMajor);  
            db.AddInParameter(command, "UpdatedBy", DbType.Guid, student.UpdatedBy);

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

        public bool IsStudentExist(Student student)
        {

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_Student_IsStudentExist");

            db.AddInParameter(command, "StudentId", DbType.Guid, student.StudentId);
            db.AddOutParameter(command, "IsExist", DbType.Boolean, 1);

            db.ExecuteNonQuery(command);

            return Convert.ToBoolean(db.GetParameterValue(command, "IsExist").ToString());
        }


        //public static DataSet Search(StudentSearch searchStudent)
        //{
        //    Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
        //    DbCommand command = db.GetStoredProcCommand("usp_Student_Search");

        //    db.AddInParameter(command, "StudentId", DbType.Guid, searchStudent.StudentId);
        //    db.AddInParameter(command, "SchoolId", DbType.Guid, searchStudent.SchoolId);

        //    return db.ExecuteDataSet(command);

        //}

        public DataSet Search(User user)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_StudentSearch");

            db.AddInParameter(command, "FirstName", DbType.String, user.FirstName);
            db.AddInParameter(command, "MiddleName", DbType.String, user.MiddleName);
            db.AddInParameter(command, "LastName", DbType.String, user.LastName);
            db.AddInParameter(command, "Zip", DbType.String, user.Zip);
            db.AddInParameter(command, "Gender", DbType.String, user.Gender);
            db.AddInParameter(command, "Status", DbType.String, user.Status);

            return db.ExecuteDataSet(command);

        }
    }
}
