using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using RHP.Common;
using System.Data;
using System.Data.Common;

namespace RHP.StudentManagement
{
   public class StudentHouseDAO
    {
        public DataSet SelectAllDataset()
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_HouseSelectAll");
            return db.ExecuteDataSet(command);
        }


        public bool Select(StudentHouse entity)
        {
            bool result = true;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand dbCommand = db.GetStoredProcCommand("usp_StudentHouseSelect");

            db.AddInParameter(dbCommand, "StudentHouseId", DbType.Int16, entity.StudentHouseId);

            using (IDataReader dataReader = db.ExecuteReader(dbCommand))
            {
                if (dataReader.Read())
                {
                    if (entity == null)
                    {
                        entity = new StudentHouse();
                    }
                    RHP.Utility.Generic.AssignDataReaderToEntity(dataReader, entity);
                }

            }
            return result;
        }

        public DataSet SelectAllByStudentIdDataset(Guid UserId)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_StudentHouseSelectByStudentId");
            db.AddInParameter(command, "UserId", DbType.Guid, UserId);

            return db.ExecuteDataSet(command);
        }

        public DataSet SelectAllByHouseIdDataset(Guid HouseId)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_StudentHouseSelectByHouseId");
            db.AddInParameter(command, "HouseId", DbType.Guid, HouseId);

            return db.ExecuteDataSet(command);
        }

       public bool Insert(StudentHouse studentHouse)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Insert(studentHouse, db, null);
        }

       public bool Insert(StudentHouse studentHouse, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_StudentHouseInsert");

            db.AddInParameter(command, "HouseId", DbType.Guid, studentHouse.HouseId);
            db.AddInParameter(command, "UserId", DbType.Guid, studentHouse.UserId);
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, studentHouse.IsDeleted);
            db.AddInParameter(command, "CreatedBy", DbType.Guid, studentHouse.CreatedBy);
            db.AddOutParameter(command, "CreatedDate", DbType.DateTime, 30);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            studentHouse.CreatedDate = Convert.ToDateTime(db.GetParameterValue(command, "CreatedDate").ToString());
            studentHouse.UpdatedDate = studentHouse.CreatedDate;

            return true;
        }

       public bool Update(StudentHouse studentHouse)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Update(studentHouse, db, null);
        }

       public bool Update(StudentHouse studentHouse, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_StudentHouseUpdate");

            db.AddInParameter(command, "StudentHouseId", DbType.Int16, studentHouse.StudentHouseId);
            db.AddInParameter(command, "HouseId", DbType.Guid, studentHouse.HouseId);
            db.AddInParameter(command, "UserId", DbType.Guid, studentHouse.UserId);
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, studentHouse.IsDeleted);
            db.AddInParameter(command, "UpdatedBy", DbType.Guid, studentHouse.UpdatedBy);
            db.AddOutParameter(command, "UpdatedDate", DbType.DateTime, 30);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            studentHouse.UpdatedDate = Convert.ToDateTime(db.GetParameterValue(command, "UpdatedDate").ToString());

            return true;
        }

       public bool Delete(StudentHouse studentHouse)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Delete(studentHouse, db, null);
        }

       public bool Delete(StudentHouse studentHouse, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_StudentHouseDelete");
            db.AddInParameter(command, "StudentHouseId", DbType.Int16, studentHouse.StudentHouseId);
            db.AddInParameter(command, "UpdatedBy", DbType.Guid, studentHouse.UpdatedBy);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }
            return true;
        }

       public bool IsHouseExist(StudentHouse studentHouse)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_House_IsHouseExist");

            db.AddInParameter(command, "HouseId", DbType.Guid, studentHouse.HouseId);
            db.AddOutParameter(command, "IsExist", DbType.Boolean, 1);

            db.ExecuteNonQuery(command);

            return Convert.ToBoolean(db.GetParameterValue(command, "IsExist").ToString());
        }
    }
}
