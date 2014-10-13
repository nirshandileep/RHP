﻿using System;
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
            Photo photo = new Photo();

            if (user.HouseId.HasValue)
            {
                House house = House.Select(user.HouseId.Value);
                CurrentHouse.NavigateUrl = "~/Land_load/Land_load_Public_Profile.aspx?AccessCode=" + house.LandlordId.ToString() + "&AccessCode2=" + user.HouseId.Value.ToString();
              
                string path = "~/uploads/" + house.LandlordId + "/House/" + user.HouseId.Value.ToString() + ".jpg";
                imgCurrentHouseImage.ImageUrl = photo.LoadHouseImage(path);        

            }
            
        }

        public void LoadStudentImages(Guid AccessCode)
        {
            Photo photo = new Photo();
            string path = "~/uploads/";

            path = "~/uploads/" + AccessCode + "/Profile/" + AccessCode + ".jpg";
            imgStudentProfileImage.ImageUrl = photo.LoadProfileImage(path);
                

            path = "~/uploads/" + AccessCode + "/ProfileCover/" + AccessCode + ".jpg";
            jmgHeaderImage.ImageUrl = photo.LoadProfileCoverImage(path);

               
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