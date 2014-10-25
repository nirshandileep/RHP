using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using RHP.Comments;
using RHP.UserManagement;
using System.Web.Security;
using RHP.Common;
using RHP.SessionManager;
using RHP.Utility;
using System.IO;
using RHP.Photos;

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class Landload_Profile_Header : System.Web.UI.UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                LoadImage();
                loadUser();
            }

                if (AccessCode != string.Empty && AccessCode != null)
                {
                    try
                    {
                        
                         LoadComments(Guid.Parse(AccessCode));
                    }
                    catch (Exception ex)
                    { }
                }

           
            
        }

        public void loadUser()
        {
            User user = new User();

             user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

             if (user.UserId.HasValue)
             {
                 ProfileUserName.Text = user.FirstName + " " + user.LastName;
                 ProfileUserName.NavigateUrl = "~/Student/Student_Profile.aspx";
             }
        }

        public void LoadImage()
        {
            Photo photo = new Photo();

            imgLandloadProfileImage.ImageUrl = photo.LoadImage(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()), Enums.PhotoCategory.Profile_Picture);
            jmgHeaderImage.ImageUrl = photo.LoadImage(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()), Enums.PhotoCategory.Cover_Picture);
        }


        //public void LoadImages()
        //{
        //    string ProfileCoverImagePath = "";
        //    string ProfileImagePath = "";
        //    Photo photo = new Photo();

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

        //    imgLandloadProfileImage.ImageUrl = photo.LoadProfileImage(ProfileImagePath);

        //    jmgHeaderImage.ImageUrl = photo.LoadProfileCoverImage(ProfileCoverImagePath);

           
        //}

        public void LoadComments(Guid AccessCode)
        {
           
                DataSet ds;
                ds = new CommentDAO().SelectByContext(2, AccessCode);

                if (ds != null)
                {
                    decimal rate = 0;

                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        rate = rate + decimal.Parse(string.IsNullOrEmpty(ds.Tables[0].Rows[i]["RatingValue"].ToString().Trim()) ? "0" : ds.Tables[0].Rows[i]["RatingValue"].ToString().Trim());
                    }

                    if (rate > 0)
                    {
                        rate = rate / ds.Tables[0].Rows.Count;
                    }
                    ASPxRating.Value = rate;
                }
                
           
        }
    }
}