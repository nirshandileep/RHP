using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using RHP.Comments;
using RHP.Utility;
using System.IO;
using RHP.Photos;
using RHP.Common;


namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class Landload_Public_Profile_Header : System.Web.UI.UserControl
    {

       
        protected void Page_Load(object sender, EventArgs e)
        {
            string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");
            string AccessCode2 = Utility.GetQueryStringValueByKey(Request, "AccessCode2");
            
            if (AccessCode != string.Empty && AccessCode != null)
            {
                try
                {
                    LoadComments(Guid.Parse(AccessCode));

                    if (AccessCode2 != string.Empty && AccessCode2 != null)
                    {
                        LoadImage(Guid.Parse(AccessCode2));
                    }
                }
                catch (Exception ex)
                { }
            }

        }


        public void LoadImage(Guid AccessCode)
        {
            Photo photo = new Photo();

            imgLandloadProfileImage.ImageUrl = photo.LoadImage(AccessCode, Enums.PhotoCategory.Profile_Picture);
            jmgHeaderImage.ImageUrl = photo.LoadImage(AccessCode, Enums.PhotoCategory.Cover_Picture);
        }

        //public void LoadImages(Guid AccessCode, Guid AccessCode2)
        //{
        //    string ProfileCoverImagePath = "";
        //    string ProfileImagePath = "";
        //    Photo photo = new Photo();

        //    List<Photo> PhotoList = Photo.SelectAllByContextId(AccessCode2);

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