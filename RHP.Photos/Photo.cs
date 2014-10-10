using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;

namespace RHP.Photos
{
    public class Photo : Base
    {
       public Guid? PhotoId { get; set; }
	   public string FileName  { get; set; }
	   public string FilePath  { get; set; }
	   public string Description  { get; set; }
       public string ContextSubTypeId  { get; set; }
       public string PhotoCategoryId { get; set; }

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
        public Guid ContextId { get; set; }

        /// <summary>
        /// Only to be used for Generic methods. Avoid using this constructor for other purposes.
        /// </summary>
        public Photo()
        {
 
        }

        public Photo(Enums.ContextType contextType)
        {
            ContextTypeId = (int)contextType;
            ContextType = contextType;
        }

        public bool Insert(Photo photo)
        {
            bool result = false;
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                result = new PhotoDAO().Insert(photo, db, transaction);
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

        public bool Update(Photo photo)
        {
            bool result;
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                result = new PhotoDAO().Update(photo, db, transaction);
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

        public bool Delete(Photo photo)
        {
            bool result = false;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                result= new PhotoDAO().Delete(photo, db, transaction);

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

        public Photo(Enums.ContextType contextType, Guid contextId)
        {
            ContextTypeId = (int)contextType;
            ContextType = contextType;
            ContextId = contextId;
        }

        public List<Photo> SelectListByStudentId(Guid studentId)
        {
            return PhotoDAO.GetAllByFieldValue("ContextId", studentId, Enums.ContextType.Student);
        }

        public List<Photo> SelectListByLandLordId(Guid landlordId)
        {
            return PhotoDAO.GetAllByFieldValue("ContextId", landlordId, Enums.ContextType.Landlord);
        }

        public DataSet SelectDataSetByStudentId(Guid studentId)
        {

            return new PhotoDAO().SelectByContext((int)Enums.ContextType.Student, studentId);
        }

        public DataSet SelectDataSetByLandlordId(Guid landlordId)
        {
            return new PhotoDAO().SelectByContext((int)Enums.ContextType.Landlord, landlordId);
        }
    }
}
