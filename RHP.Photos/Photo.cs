using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace RHP.Photos
{
    public class Photo : Base
    {
       public Guid? PhotoId { get; set; }
	   public string FileName  { get; set; }
	   public string FilePath  { get; set; }
	   public string Description  { get; set; }
       public int ContextSubTypeId { get; set; }
       public int PhotoCategoryId { get; set; }

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

        public Photo ImageUpload(FileUpload FileUploadImage, string FolderPath, Photo photo)
        {
            FileUpload UploadImage = FileUploadImage;

            bool isupload = false;

            if (UploadImage.HasFile)
            {
                if (UploadImage.PostedFile.ContentLength <= 6291456)
                {
                    FileInfo finfo = new FileInfo(UploadImage.FileName);
                    string fileExtension = finfo.Extension.ToLower();

                    if (fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension != ".png")
                    {
                        try
                        {

                            if (!Directory.Exists(System.Web.HttpContext.Current.Server.MapPath(FolderPath)))
                                Directory.CreateDirectory(System.Web.HttpContext.Current.Server.MapPath(FolderPath));

                            //create the path to save the file to
                            string imagename = Membership.GetUser().ProviderUserKey.ToString() + fileExtension;

                            string fileName = Path.Combine(System.Web.HttpContext.Current.Server.MapPath(FolderPath), imagename);
                            //save the file to our local path
                            UploadImage.SaveAs(fileName);

                            isupload = true;
                            photo.PhotoId = Guid.NewGuid(); 
                            photo.FileName = imagename;
                            photo.FilePath = FolderPath +"/"+fileName;
                            photo.Description = imagename;
                            photo.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                            photo.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

                        }
                        catch (Exception ex)
                        {
                            isupload = false;
                        }
                    }
                    else
                    {
                        isupload = false;
                        // extention
                       // Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Allowed_fileExtension + "'); }", true);

                    }
                }
                else
                {
                    isupload = false;
                    // max size 
                   // Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Allowed_MaxImageSize + "'); }", true);

                }


            }


           

            return photo;
        }

        public string LoadProfileImage(string ImagePath)
        {

            string ImageUrl = "";
            try
            {
                if (File.Exists(System.Web.HttpContext.Current.Server.MapPath(ImagePath)))
                {

                    ImageUrl = ImagePath;
                }
                else
                {
                    ImageUrl = "~/Images/Sample/Noimage.jpg";
                }
            }
            catch (Exception ec)
            {
                ImageUrl = "~/Images/Sample/Noimage.jpg";
            }

            return ImageUrl;
        }

        public string LoadHouseImage(string ImagePath)
        {

            string ImageUrl = "";
            try
            {
                if (File.Exists(System.Web.HttpContext.Current.Server.MapPath(ImagePath)))
                {

                    ImageUrl = ImagePath;
                }
                else
                {
                    ImageUrl = "~/Images/Sample/House.jpg";
                }
            }
            catch (Exception ec)
            {
                ImageUrl = "~/Images/Sample/House.jpg";
            }

            return ImageUrl;
        }

        public string LoadProfileCoverImage(string ImagePath)
        {

            string ImageUrl = "";
            try
            {
                if (File.Exists(System.Web.HttpContext.Current.Server.MapPath(ImagePath)))
                {

                    ImageUrl = ImagePath;
                }
                else
                {
                    ImageUrl = "~/Images/Sample/Bannerimage.jpg";
                }
            }
            catch (Exception ec)
            {
                ImageUrl = "~/Images/Sample/Bannerimage.jpg";
            }

            return ImageUrl;
        }

        public List<String> LoadImageList(string ImageFolderPath)
        {
            List<String> images = null;

            if (ImageFolderPath != string.Empty)
            {
                try
                {
                    string[] filesindirectory = Directory.GetFiles(System.Web.HttpContext.Current.Server.MapPath(ImageFolderPath));

                    if (filesindirectory != null)
                    {
                         images = new List<string>(filesindirectory.Count());

                        foreach (string item in filesindirectory)
                        {
                            images.Add(String.Format(ImageFolderPath + "/{0}", System.IO.Path.GetFileName(item)));
                        }

                       
                    }
                }
                catch (Exception ec)
                { }
            }

            return images;
        }
    }
}
