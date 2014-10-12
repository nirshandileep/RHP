﻿using System;
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

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class Landload_Profile_Header : System.Web.UI.UserControl
    {
        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {
                    _user = new User();  //_
                    user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                }
                else
                {

                }
                Session[Constants.SESSION_LOGGED_USER] = _user;
                return _user;
            }
            set
            {
                _user = value;
                Session[Constants.SESSION_LOGGED_USER] = _user;
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");
            LoadStudentImages();
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


        public void LoadStudentImages()
        {

            string path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString();
            try
            {
                path = path + "/Profile/" + Membership.GetUser().ProviderUserKey.ToString() + ".jpg";
                if (File.Exists(Server.MapPath(path)))
                {

                    imgLandloadProfileImage.ImageUrl = path;
                }
                else
                {
                    imgLandloadProfileImage.ImageUrl = "~/Images/Sample/profileimage1.jpg";
                }
            }
            catch (Exception ec)
            {
                imgLandloadProfileImage.ImageUrl = "~/Images/Sample/profileimage1.jpg";
            }


            try
            {
                path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString();
                path = path + "/ProfileCover/" + Membership.GetUser().ProviderUserKey.ToString() + ".jpg";
                if (File.Exists(Server.MapPath(path)))
                {
                    jmgHeaderImage.ImageUrl = path;

                }
                else
                {
                    jmgHeaderImage.ImageUrl = "~/Images/Sample/profileimage2.jpg";
                }
            }
            catch (Exception ec)
            {
                jmgHeaderImage.ImageUrl = "~/Images/Sample/profileimage2.jpg";
            }
            // need a path to landlord house and profile image
            // imgCurrentHouseImage.ImageUrl = path + "/Profile/" + Membership.GetUser().ProviderUserKey.ToString() + ".jpg";
            // imgLandloadProfileImage.ImageUrl = path + "/Profile/" + Membership.GetUser().ProviderUserKey.ToString() + ".jpg";

        }



        public void LoadComments(Guid AccessCode)
        {
           // user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

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