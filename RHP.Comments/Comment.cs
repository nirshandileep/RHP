using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;

namespace RHP.Comments
{
    public class Comment : Base
    {
        public Guid? CommentId { get; set; }
        public string CommentText { get; set; }
        public decimal RatingValue { get; set; }
        public string FilePath { get; set; }
        private int _contextTypeId;
        public int ContextTypeId
        {
            get 
            {
                return _contextTypeId;
            }
            set
            {
                ContextType = (Enums.ContextType)value;
                _contextTypeId = value;
            }
        }

        public Enums.ContextType ContextType { get; set; }

        private int _commentTypeId;
        public int CommentTypeId
        {
            get
            {
                return _commentTypeId;
            }
            set
            {
                CommentType = (Enums.CommentType)value;
                _commentTypeId = value;
            }
        }

        public Enums.CommentType CommentType { get; set; }

        public Guid ContextId { get; set; }

        /// <summary>
        /// Only to be used for Generic methods. Avoid using this constructor for other purposes.
        /// </summary>
        public Comment()
        {
 
        }

        public Comment(Enums.CommentType commentType)
        {
            CommentTypeId = (int)commentType;
            CommentType = commentType;
        }

        public Comment(Enums.ContextType contextType)
        {
            ContextTypeId = (int)contextType;
            ContextType = contextType;
        }
        public bool Insert(Comment comment)
        {
            bool result = false;
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                result = new CommentDAO().Insert(comment, db, transaction);
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

        public bool Update(Comment comment)
        {
            bool result;
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                result = new CommentDAO().Update(comment, db, transaction);
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

        public bool Delete(Comment comment)
        {
            bool result = false;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                result= new CommentDAO().Delete(comment, db, transaction);

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

        public Comment(Enums.ContextType contextType, Guid contextId)
        {
            ContextTypeId = (int)contextType;
            ContextType = contextType;
            ContextId = contextId;
        }

        public List<Comment> SelectListByStudentId(Guid studentId)
        {
            return CommentDAO.GetAllByFieldValue("ContextId", studentId, Enums.ContextType.Student);
        }

        public List<Comment> SelectListByLandLordId(Guid landlordId)
        {
            return CommentDAO.GetAllByFieldValue("ContextId", landlordId, Enums.ContextType.Landlord);
        }

        public DataSet SelectDataSetByStudentId(Guid studentId)
        {

            return new CommentDAO().SelectByContext((int)Enums.ContextType.Student, studentId);
        }

        public DataSet SelectDataSetByLandlordId(Guid landlordId)
        {
            return new CommentDAO().SelectByContext((int)Enums.ContextType.Landlord, landlordId);
        }

        public bool SaveDataSet(DataSet dsComments)
        {
            bool result = false;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                result = new CommentDAO().InsertUpdateDelete(dsComments, db, transaction);
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
