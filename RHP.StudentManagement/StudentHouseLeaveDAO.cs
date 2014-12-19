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
   public class StudentHouseLeaveDAO
    {
       public bool Select(StudentHouseLeave entity)
       {
           bool result = true;

           Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
           DbCommand dbCommand = db.GetStoredProcCommand("usp_StudentHouseLeaveSelect");

           db.AddInParameter(dbCommand, "HouseId", DbType.Guid, entity.HouseId);
           db.AddInParameter(dbCommand, "RequestTo", DbType.Guid, entity.RequestTo);

           using (IDataReader dataReader = db.ExecuteReader(dbCommand))
           {
               if (dataReader.Read())
               {
                   if (entity == null)
                   {
                       entity = new StudentHouseLeave();
                   }
                   RHP.Utility.Generic.AssignDataReaderToEntity(dataReader, entity);
               }

           }
           return result;
       }

       public bool Insert(StudentHouseLeave studentHouseLeave)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Insert(studentHouseLeave, db, null);
        }

       public bool Insert(StudentHouseLeave studentHouseLeave, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_StudentHouseLeaveInsert");

            db.AddInParameter(command, "HouseId", DbType.Guid, studentHouseLeave.HouseId);
            db.AddInParameter(command, "RequestBy", DbType.Guid, studentHouseLeave.RequestBy);
            db.AddInParameter(command, "RequestTo", DbType.Guid, studentHouseLeave.RequestTo);
            db.AddInParameter(command, "status", DbType.Int16, studentHouseLeave.status);
            db.AddOutParameter(command, "RequestDate", DbType.DateTime, 30);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            studentHouseLeave.RequestDate = Convert.ToDateTime(db.GetParameterValue(command, "RequestDate").ToString());
            studentHouseLeave.ResponseDate = studentHouseLeave.RequestDate;

            return true;
        }

       public bool Update(StudentHouseLeave studentHouseLeave)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Update(studentHouseLeave, db, null);
        }

       public bool Update(StudentHouseLeave studentHouseLeave, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_StudentHouseLeaveUpdate");

            db.AddInParameter(command, "HouseId", DbType.Guid, studentHouseLeave.HouseId);
            db.AddInParameter(command, "RequestBy", DbType.Guid, studentHouseLeave.RequestBy);
            db.AddInParameter(command, "RequestTo", DbType.Guid, studentHouseLeave.RequestTo);
            db.AddInParameter(command, "status", DbType.Int16, studentHouseLeave.status);
            db.AddOutParameter(command, "ResponseDate", DbType.DateTime, 30);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            studentHouseLeave.ResponseDate = Convert.ToDateTime(db.GetParameterValue(command, "ResponseDate").ToString());

            return true;
        }

       public bool IsStudentHouseLeaveExist(StudentHouseLeave studentHouseLeave)
       {

           Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
           DbCommand command = db.GetStoredProcCommand("usp_StudentHouseLeave_IsExist");

           db.AddInParameter(command, "HouseId", DbType.Guid, studentHouseLeave.HouseId);
           db.AddInParameter(command, "RequestTo", DbType.Guid, studentHouseLeave.RequestTo);
           db.AddOutParameter(command, "IsExist", DbType.Boolean, 1);

           db.ExecuteNonQuery(command);

           return Convert.ToBoolean(db.GetParameterValue(command, "IsExist").ToString());
       }
    }
}
