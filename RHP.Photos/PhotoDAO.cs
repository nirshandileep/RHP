using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using RHP.Common;

namespace RHP.Photos
{
    public class PhotoDAO
    {
       
        public bool Insert(Photo photo, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_PhotoInsert");
            photo.PhotoId = Guid.NewGuid();

            db.AddInParameter(command, "PhotoId", DbType.Guid, photo.PhotoId);
            db.AddInParameter(command, "FileName", DbType.String, photo.FileName);
            db.AddInParameter(command, "FilePath", DbType.String, photo.FilePath);
            db.AddInParameter(command, "ContextId", DbType.Guid, photo.ContextId);
            db.AddInParameter(command, "ContextSubId", DbType.Guid, photo.ContextSubId);
            db.AddInParameter(command, "Description", DbType.String, photo.Description);
            db.AddInParameter(command, "ContextTypeId", DbType.Int32, (int)photo.ContextType);
            db.AddInParameter(command, "ContextSubTypeId", DbType.Int32, photo.ContextSubTypeId);
            db.AddInParameter(command, "PhotoCategoryId", DbType.Int32, photo.PhotoCategoryId);
            db.AddInParameter(command, "CreatedBy", DbType.Guid, photo.CreatedBy);
            db.AddOutParameter(command, "CreatedDate", DbType.DateTime, 30);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            photo.CreatedDate = Convert.ToDateTime(db.GetParameterValue(command, "CreatedDate").ToString());
            photo.UpdatedDate = photo.CreatedDate;

            return true;
        }

        public bool Update(Photo photo, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_PhotoUpdate");

            db.AddInParameter(command, "PhotoId", DbType.Guid, photo.PhotoId);
            db.AddInParameter(command, "FileName", DbType.String, photo.FileName);
            db.AddInParameter(command, "FilePath", DbType.String, photo.FilePath);
            db.AddInParameter(command, "ContextId", DbType.Guid, photo.ContextId);
            db.AddInParameter(command, "ContextSubId", DbType.Guid, photo.ContextSubId);
            db.AddInParameter(command, "Description", DbType.String, photo.Description);
            db.AddInParameter(command, "ContextTypeId", DbType.Int32, (int)photo.ContextType);
            db.AddInParameter(command, "ContextSubTypeId", DbType.Int32, photo.ContextSubTypeId);
            db.AddInParameter(command, "PhotoCategoryId", DbType.Int32, photo.PhotoCategoryId);

            db.AddInParameter(command, "UpdatedBy", DbType.Guid, photo.UpdatedBy);
            db.AddOutParameter(command, "UpdatedDate", DbType.DateTime, 30);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            photo.UpdatedDate = Convert.ToDateTime(db.GetParameterValue(command, "UpdatedDate").ToString());

            return true;
        }

        public bool Delete(Photo photo, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_PhotoDelete");

            db.AddInParameter(command, "PhotoId", DbType.Guid, photo.PhotoId);

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

        public DataSet SelectByContext(int contextTypeId, Guid contextId)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_PhotoSelectAllByContextId");
            db.AddInParameter(command, "ContextTypeId", DbType.Int32, contextTypeId);
            db.AddInParameter(command, "ContextId", DbType.Guid, contextId);

            return db.ExecuteDataSet(command);
        }


        /// <summary>
        /// Returns a collection of T. T must be an Entity class
        /// </summary>
        public static List<Photo> GetAllByFieldValue(string fieldName, Guid fieldValue, Enums.PhotoCategory PhotoCategoryId)
        {
            List<Photo> returnEntityCollection = new List<Photo>();

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand dbCommand = db.GetStoredProcCommand("usp_PhotoSelectAllBy" + fieldName);

            db.AddInParameter(dbCommand, fieldName, DbType.Guid, fieldValue);
            db.AddInParameter(dbCommand, "PhotoCategoryId", DbType.Int32, (int)PhotoCategoryId);

            using (IDataReader dataReader = db.ExecuteReader(dbCommand))
            {
                while (dataReader.Read())
                {
                    Photo entity = new Photo();

                    Utility.Generic.AssignDataReaderToEntity(dataReader, entity);
                    returnEntityCollection.Add(entity);
                }
            }

            return returnEntityCollection;
        }

        public static List<Photo> GetAllByFieldValue(string fieldName, Guid fieldValue)
        {
            List<Photo> returnEntityCollection = new List<Photo>();

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand dbCommand = db.GetStoredProcCommand("usp_PhotoSelectAllBy" + fieldName);

            db.AddInParameter(dbCommand, fieldName, DbType.Guid, fieldValue);
            db.AddInParameter(dbCommand, "PhotoCategoryId", DbType.Int32, null);

            using (IDataReader dataReader = db.ExecuteReader(dbCommand))
            {
                while (dataReader.Read())
                {
                    Photo entity = new Photo();

                    Utility.Generic.AssignDataReaderToEntity(dataReader, entity);
                    returnEntityCollection.Add(entity);
                }
            }

            return returnEntityCollection;
        }
    }
}
