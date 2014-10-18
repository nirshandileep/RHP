using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.IO;
using RHP.Common;
using RHP.Photos;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Student_Profile_Images_Add : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                if (!IsPostBack)
                {
                    LoadImage();
                }
            }
        }

        public void LoadImage()
        {
              Photo photo = new Photo();

              ProfileImage_.ImageUrl = photo.LoadImage(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()), Enums.PhotoCategory.Profile_Picture);
              CoverImage.ImageUrl = photo.LoadImage(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()), Enums.PhotoCategory.Cover_Picture);
        }

        //public void LoadImageTemp()
        //{

        //    Photo photo = new Photo();

        //    string ProfileCoverImagePath = "";
        //    string ProfileImagePath = "";

        //    List<Photo> PhotoList = Photo.SelectAllByContextId(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

        //    if (PhotoList.Count > 0)
        //    {
        //        foreach (Photo _List in PhotoList)
        //        {
        //            if (_List.PhotoCategoryId == (int)Enums.PhotoCategory.Cover_Picture)
        //            {
        //                ProfileCoverImagePath = _List.FilePath;
        //            }

        //            if (_List.PhotoCategoryId == (int)Enums.PhotoCategory.Profile_Picture)
        //            {
        //                ProfileImagePath = _List.FilePath;
        //            }

        //        }

        //    }

        //    if (ProfileImagePath != string.Empty)
        //    {
        //        try
        //        {

        //            string images = photo.LoadProfileImage(ProfileImagePath);

        //            if (images != string.Empty)
        //            {

        //                ProfileImage_.ImageUrl = images;
                       
        //            }

        //        }
        //        catch (Exception ec)
        //        { }
        //    }

        //    if (ProfileCoverImagePath != string.Empty)
        //    {
        //        try
        //        {
        //            string CoverImages = photo.LoadProfileCoverImage(ProfileCoverImagePath);

        //            if (CoverImages != string.Empty)
        //            {

        //                CoverImage.ImageUrl = CoverImages;

        //            }

        //        }
        //        catch (Exception ec)
        //        { }
        //    }
        //    else
        //    {
 
        //    }

        //}
        
        protected void btn_Photos_Click(object sender, EventArgs e)
        {
            Photo photo = new Photo();

            string path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString();

            bool IsUpload = photo.ImageUpload(FileUploads, path, photo);

            if (IsUpload == true)
            {
                photo.ContextId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                photo.ContextTypeId = (int)Enums.ContextType.Student;
                photo.PhotoCategoryId = (int)Enums.PhotoCategory.Profile_Picture;

                photo.Insert(photo);
            }
            Response.Redirect("~/Student/Student_Profile.aspx");
        }

        protected void ButtonCoverImage_Click(object sender, EventArgs e)
        {
            Photo photo = new Photo();
            string path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString() ;

           bool IsUpload = photo.ImageUpload(FileUploadCoverImage, path, photo);

           if (IsUpload == true)
           {
               photo.ContextId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
               photo.ContextTypeId = (int)Enums.ContextType.Student;
               photo.PhotoCategoryId = (int)Enums.PhotoCategory.Cover_Picture;

               photo.Insert(photo);
           }

            
            Response.Redirect("~/Student/Student_Profile.aspx");
        }


    }
}