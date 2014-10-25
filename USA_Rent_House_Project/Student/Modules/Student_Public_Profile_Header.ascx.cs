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
using RHP.UserManagement;
using RHP.LandlordManagement;
using RHP.Photos;
using RHP.Common;


namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Student_Public_Profile_Header : System.Web.UI.UserControl
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

            if (AccessCode != string.Empty && AccessCode != null)
            {
                try
                {
                    LoadComments(Guid.Parse(AccessCode));
                    LoadHouseData(Guid.Parse(AccessCode));
                    LoadProfileImage(Guid.Parse(AccessCode));
                    LoadStudentImages(Guid.Parse(AccessCode));
                }
                catch (Exception ex)
                { }
            }

        }

        private void LoadHouseData(Guid UserId)
        {
            User user = User.Select(UserId);
            Photo photo = new Photo();

            if (user.HouseId.HasValue)
            {

                ProfileUserName.Text = user.FirstName + " " + user.LastName;
                ProfileUserName.NavigateUrl = "~/Student/Student_Public_Profile.aspx?AccessCode=" + UserId;
                imgStudentProfileImage.NavigateUrl = "~/Student/Student_Public_Profile.aspx?AccessCode=" + UserId;

                House house = House.Select(user.HouseId.Value);
                imgCurrentHouseImage.NavigateUrl = "~/Land_load/Land_load_Public_Profile.aspx?AccessCode=" + house.LandlordId.ToString() + "&AccessCode2=" + user.HouseId.Value.ToString();
                imgCurrentHouseImage.ImageUrl = photo.LoadHouseImage(house.LandlordId, user.HouseId.Value, Enums.ContextSubType.House, Enums.PhotoCategory.House_Picture);

                User user_ = new User();
                user_ = User.Select(house.LandlordId);

                ProfileLandlordName.Text = user_.FirstName + " " + user_.LastName;
                ProfileLandlordName.NavigateUrl = "~/Land_load/Land_load_Public_Profile.aspx?AccessCode=" + user.HouseId.Value.ToString() + "&AccessCode2=" + house.LandlordId.ToString();
               
            }
            
        }

        public void LoadStudentImages(Guid AccessCode)
        {
            Photo photo = new Photo();
            string ProfileCoverImagePath = "";
            string ProfileImagePath = "";

            List<Photo> PhotoList = Photo.SelectAllByContextId(AccessCode);

            if (PhotoList.Count > 0)
            {
                foreach (Photo _List in PhotoList)
                {
                    if (_List.PhotoCategoryId == (int)Enums.PhotoCategory.Cover_Picture)
                    {
                        ProfileCoverImagePath = _List.FilePath;

                    }

                    if (_List.PhotoCategoryId == (int)Enums.PhotoCategory.Profile_Picture)
                    {
                        ProfileImagePath = _List.FilePath;
                    }

                }

            }

               
        }

        public void LoadProfileImage(Guid AccessCode)
        {
            Photo photo = new Photo();

            imgStudentProfileImage.ImageUrl = photo.LoadImage(AccessCode, Enums.PhotoCategory.Profile_Picture);
            jmgHeaderImage.ImageUrl = photo.LoadImage(AccessCode, Enums.PhotoCategory.Cover_Picture);

           
        }

        public void LoadComments(Guid AccessCode)
        {

            DataSet ds;
            ds = new CommentDAO().SelectByContext(1, AccessCode);

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