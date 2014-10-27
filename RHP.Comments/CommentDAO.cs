using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;
using RHP.Common;

namespace RHP.Comments
{
    public class CommentDAO
    {
        public DataSet SelectByContext(int contextTypeId, Guid contextId)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_CommentSelectAllByContextId");
            db.AddInParameter(command, "ContextTypeId", DbType.Int32, contextTypeId);
            db.AddInParameter(command, "ContextId", DbType.Guid, contextId);

           return  db.ExecuteDataSet(command);
        }

        public bool Insert(Comment comment, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_CommentInsert");
            comment.CommentId = Guid.NewGuid();
          //  db.AddInParameter(command, "CommentId", DbType.Guid, comment.CommentId);
            db.AddInParameter(command, "CommentText", DbType.String, comment.CommentText);
            db.AddInParameter(command, "RatingValue", DbType.Decimal, comment.RatingValue);
            db.AddInParameter(command, "ContextId", DbType.Guid, comment.ContextId);
            db.AddInParameter(command, "ContextTypeId", DbType.Int32, (int)comment.ContextType);
            db.AddInParameter(command, "CommentTypeId", DbType.Int32, (int)comment.CommentType);
            db.AddInParameter(command, "FilePath", DbType.String, comment.FilePath);

            db.AddInParameter(command, "IsDeleted", DbType.String, comment.IsDeleted);
            db.AddInParameter(command, "CreatedBy", DbType.Guid, comment.CreatedBy);
            db.AddOutParameter(command, "CreatedDate", DbType.DateTime, 30);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            comment.CreatedDate = Convert.ToDateTime(db.GetParameterValue(command, "CreatedDate").ToString());
            comment.UpdatedDate = comment.CreatedDate;

            return true;
        }

        public bool Update(Comment comment, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_CommentUpdate");
            
            db.AddInParameter(command, "CommentId", DbType.Guid, comment.CommentId);
            db.AddInParameter(command, "CommentText", DbType.String, comment.CommentText);
            db.AddInParameter(command, "RatingValue", DbType.Decimal, comment.RatingValue);
            db.AddInParameter(command, "ContextTypeId", DbType.Int32, (int)comment.ContextType);
            db.AddInParameter(command, "CommentTypeId", DbType.Int32, (int)comment.CommentType);
            db.AddInParameter(command, "FilePath", DbType.String, comment.FilePath);
            db.AddInParameter(command, "IsDeleted", DbType.Boolean, comment.IsDeleted);
            db.AddInParameter(command, "UpdatedBy", DbType.Guid, comment.UpdatedBy);
            db.AddOutParameter(command, "UpdatedDate", DbType.DateTime, 30);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            comment.UpdatedDate = Convert.ToDateTime(db.GetParameterValue(command, "UpdatedDate").ToString());

            return true;
        }

        public bool Delete(Comment comment, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_CommentDelete");

            db.AddInParameter(command, "CommentId", DbType.Guid, comment.CommentId);
            db.AddInParameter(command, "UpdatedBy", DbType.Guid, comment.UpdatedBy);

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

        public bool InsertUpdateDelete(DataSet dsComments, Database db, DbTransaction transaction)
        {

            DbCommand commandInsert = db.GetStoredProcCommand("usp_CommentInsert");

            db.AddInParameter(commandInsert, "CommentId", DbType.Guid, "CommentId", DataRowVersion.Current);
            db.AddInParameter(commandInsert, "CommentText", DbType.String, "CommentText", DataRowVersion.Current);
            db.AddInParameter(commandInsert, "RatingValue", DbType.Decimal, "RatingValue", DataRowVersion.Current);
            db.AddInParameter(commandInsert, "ContextTypeId", DbType.Int32, "ContextTypeId", DataRowVersion.Current);
            db.AddInParameter(commandInsert, "CommentTypeId", DbType.Int32, "CommentTypeId", DataRowVersion.Current);
            db.AddInParameter(commandInsert, "FilePath", DbType.String, "FilePath", DataRowVersion.Current);

            db.AddInParameter(commandInsert, "IsDeleted", DbType.String, "IsDeleted", DataRowVersion.Current);
            db.AddInParameter(commandInsert, "CreatedBy", DbType.Guid, "CreatedBy", DataRowVersion.Current);
            db.AddOutParameter(commandInsert, "CreatedDate", DbType.DateTime, 30);

            DbCommand commandUpdate = db.GetStoredProcCommand("usp_CommentUpdate");

            db.AddInParameter(commandUpdate, "CommentId", DbType.Guid, "CommentId", DataRowVersion.Current);
            db.AddInParameter(commandUpdate, "CommentText", DbType.String, "CommentText", DataRowVersion.Current);
            db.AddInParameter(commandUpdate, "RatingValue", DbType.Decimal, "RatingValue", DataRowVersion.Current);
            db.AddInParameter(commandUpdate, "ContextTypeId", DbType.Int32, "ContextType", DataRowVersion.Current);
            db.AddInParameter(commandInsert, "CommentTypeId", DbType.Int32, "CommentTypeId", DataRowVersion.Current);
            db.AddInParameter(commandInsert, "FilePath", DbType.String, "FilePath", DataRowVersion.Current);

            db.AddInParameter(commandUpdate, "IsDeleted", DbType.Boolean, "IsDeleted", DataRowVersion.Current);
            db.AddInParameter(commandUpdate, "UpdatedBy", DbType.Guid, "UpdatedBy", DataRowVersion.Current);
            db.AddOutParameter(commandUpdate, "UpdatedDate", DbType.DateTime, 30);

            DbCommand commandDelete = db.GetStoredProcCommand("usp_CommentDelete");
            db.AddInParameter(commandDelete, "CommentId", DbType.Guid, "CommentId", DataRowVersion.Current);
            db.AddInParameter(commandDelete, "UpdatedBy", DbType.Guid, "UpdatedBy", DataRowVersion.Current);

            db.UpdateDataSet(dsComments, dsComments.Tables[0].TableName, commandInsert, commandUpdate, commandDelete, transaction);

            return true;
        }

        /// <summary>
        /// Returns a collection of T. T must be an Entity class
        /// </summary>
        public static List<Comment> GetAllByFieldValue(string fieldName, Guid fieldValue, Enums.ContextType contextType)
        {
            List<Comment> returnEntityCollection = new List<Comment>();

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand dbCommand = db.GetStoredProcCommand("usp_CommentSelectAllBy" + fieldName);

            db.AddInParameter(dbCommand, fieldName, DbType.Guid, fieldValue);
            db.AddInParameter(dbCommand, "ContextTypeId", DbType.Int32, (int)contextType);

            using (IDataReader dataReader = db.ExecuteReader(dbCommand))
            {
                while (dataReader.Read())
                {
                    Comment entity = new Comment();

                    Utility.Generic.AssignDataReaderToEntity(dataReader, entity);
                    returnEntityCollection.Add(entity);
                }
            }

            return returnEntityCollection;
        }
    }
}
