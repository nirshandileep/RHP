using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;

namespace RHP.Multimedia
{
    public class PhotoDAO
    {


        public bool Insert(Photo photo, Database db, DbTransaction transaction = null)
        {
            DbCommand command = db.GetStoredProcCommand("usp_PhotoInsert");
            photo.PhotoId = Guid.NewGuid();

            db.AddInParameter(command, "PhotoId", DbType.Guid, photo.PhotoId);
            db.AddInParameter(command, "FileName", DbType.String, photo.FileName);
            db.AddInParameter(command, "FilePath", DbType.String, photo.FilePath);
            db.AddInParameter(command, "ContextId", DbType.Guid, photo.ContextId);
            db.AddInParameter(command, "Description", DbType.String, photo.Description);
            db.AddInParameter(command, "ContextTypeId", DbType.Int32, (int)photo.ContextType);
            db.AddInParameter(command, "ContextSubTypeId", DbType.Int32, photo.ContextSubTypeId);
            db.AddInParameter(command, "PhotoCategoryId", DbType.Int32, (int)photo.PhotoCategory);          

            db.AddInParameter(command, "IsDeleted", DbType.String, photo.IsDeleted);
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


    }
}
