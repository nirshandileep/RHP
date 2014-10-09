using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;
using System.Web.Security;
using System.IO;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Student_Profile_Header : System.Web.UI.UserControl
    {
        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {

                    _user = new User(); // 

                    if (HttpContext.Current.User.Identity.IsAuthenticated)
                    {
                        _user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                    }
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
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                LoadStudentImages();
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

                        imgStudentProfileImage.ImageUrl = path;
                    }
                    else
                    {
                        imgStudentProfileImage.ImageUrl = "~/Images/Sample/profileimage1.jpg";
                    }
                }
                catch (Exception ec)
                { 
                         imgStudentProfileImage.ImageUrl ="~/Images/Sample/profileimage1.jpg";
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
        
    }
}