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
                        LoadStudentImages(Guid.Parse(AccessCode2));
                    }
                }
                catch (Exception ex)
                { }
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

                    imgLandloadProfileImage.ImageUrl = path;
                }
                else
                {
                    imgLandloadProfileImage.ImageUrl = "~/Images/Sample/Noimage.jpg";
                }
            }
            catch (Exception ec)
            {
                imgLandloadProfileImage.ImageUrl = "~/Images/Sample/Noimage.jpg";
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