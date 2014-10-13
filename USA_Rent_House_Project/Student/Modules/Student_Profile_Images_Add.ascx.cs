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
                
                string ProfileCoverImagePath = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString() + "/ProfileCover";
                string ProfileImagePath = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString() + "/Profile";

                LoadImage(ProfileImagePath, ProfileCoverImagePath);

            }
        }

       
        protected void btn_Photos_Click(object sender, EventArgs e)
        {
            Photo photo = new Photo();

            string path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString() + "/Profile";
            photo = photo.ImageUpload(FileUploads, path, photo);

           
            Response.Redirect("~/Student/Student_Profile.aspx");
        }

        protected void ButtonCoverImage_Click(object sender, EventArgs e)
        {
            Photo photo = new Photo();
            string path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString() + "/ProfileCover";

           photo = photo.ImageUpload(FileUploadCoverImage, path, photo);
          
            
            Response.Redirect("~/Student/Student_Profile.aspx");
        }

        public void LoadImage(string ProfileImagePath, string ProfileCoverImagePath)
        {
            if (ProfileImagePath != string.Empty)
            {
                try
                {
                    Photo photo = new Photo();
                    List<String> images = photo.LoadImageList(ProfileImagePath);

                    if (images != null)
                    {
                        RepeaterImages.DataSource = images;
                        RepeaterImages.DataBind();
                    }
                }
                catch (Exception ec)
                { }
            }

            if (ProfileCoverImagePath != string.Empty)
            {
                try
                {
                     Photo photo = new Photo();
                     List<String> CoverImages = photo.LoadImageList(ProfileCoverImagePath);

                     if (CoverImages != null)
                     {
                         RepeaterCoverImage.DataSource = CoverImages;
                         RepeaterCoverImage.DataBind();
                     }
                }
                catch (Exception ec)
                { }
            }

        }
        
       
    }
}