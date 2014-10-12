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
                    LoadStudentImages(Guid.Parse(AccessCode));
                }
                catch (Exception ex)
                { }
            }

        }

        private void LoadHouseData(Guid LandlordId)
        {
            User user = User.Select(LandlordId);
           
            if (user.HouseId.HasValue)
            {
                House house = House.Select(user.HouseId.Value);

                string path = "~/uploads/" + house.LandlordId;
                    try
                    {
                        path = path + "/House/" + user.HouseId.Value.ToString() + ".jpg";
                        if (File.Exists(Server.MapPath(path)))
                        {

                            imgCurrentHouseImage.ImageUrl = path;
                        }
                        else
                        {
                            imgCurrentHouseImage.ImageUrl = "~/Images/Sample/House.jpg";
                        }
                    }
                    catch (Exception ec)
                    {
                        imgCurrentHouseImage.ImageUrl = "~/Images/Sample/House.jpg";
                    }
               
            }
            
        }

        public void LoadStudentImages(Guid AccessCode)
        {

            string path = "~/uploads/" + AccessCode;
            try
            {
                path = path + "/Profile/" + AccessCode + ".jpg";
                if (File.Exists(Server.MapPath(path)))
                {

                    imgStudentProfileImage.ImageUrl = path;
                }
                else
                {
                    imgStudentProfileImage.ImageUrl = "~/Images/Sample/Noimage.jpg";
                }
            }
            catch (Exception ec)
            {
                imgStudentProfileImage.ImageUrl = "~/Images/Sample/Noimage.jpg";
            }


            try
            {
                path = "~/uploads/" + AccessCode;
                path = path + "/ProfileCover/" + AccessCode + ".jpg";
                if (File.Exists(Server.MapPath(path)))
                {
                    jmgHeaderImage.ImageUrl = path;

                }
                else
                {
                    jmgHeaderImage.ImageUrl = "~/Images/Sample/Bannerimage.jpg";
                }
            }
            catch (Exception ec)
            {
                jmgHeaderImage.ImageUrl = "~/Images/Sample/Bannerimage.jpg";
            }
            // need a path to landlord house and profile image
            // imgCurrentHouseImage.ImageUrl = path + "/Profile/" + Membership.GetUser().ProviderUserKey.ToString() + ".jpg";
            // imgLandloadProfileImage.ImageUrl = path + "/Profile/" + Membership.GetUser().ProviderUserKey.ToString() + ".jpg";

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