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
using RHP.LandlordManagement;
using RHP.Photos;


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
                    _user = new User();
                    //_user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
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
       
        private House _house;

        private House house
        {
            get
            {

                if (_house == null)
                {
                    _house = House.Select(HouseId);
                }
                return _house;
            }
            set
            {
                _house = value;
            }
        }

        public Guid HouseId
        {
            get
            {
                Guid houseid;
                Guid.TryParse(hdnHouseId.Value.Trim(), out houseid);
                return houseid;
            }
            set
            {
                hdnHouseId.Value = value.ToString();
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {

                LoadImages();
            }
        }


        private void LoadImages()
        {
           
                Photo photo = new Photo();
                string path = "~/uploads/";

               user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

                if (user.HouseId.HasValue)
                {

                    hdnHouseId.Value = user.HouseId.Value.ToString();

                    CurrentHouse.NavigateUrl = "~/Land_load/Land_load_Public_Profile.aspx?AccessCode=" + house.LandlordId.ToString() + "&AccessCode2=" + user.HouseId.Value.ToString();

                    path = "~/uploads/" + house.LandlordId.ToString() + "/House/" + user.HouseId.Value.ToString() + ".jpg";
                    imgCurrentHouseImage.ImageUrl = photo.LoadHouseImage(path);


                    path = "~/uploads/" + house.LandlordId.ToString() + "/Profile/" + house.LandlordId.ToString() + ".jpg";
                    imgLandloadProfileImage.ImageUrl = photo.LoadProfileImage(path);
                    
                }


                path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString() + "/Profile/" + Membership.GetUser().ProviderUserKey.ToString() + ".jpg";
                imgStudentProfileImage.ImageUrl = photo.LoadProfileImage(path);

                path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString() + "/ProfileCover/" + Membership.GetUser().ProviderUserKey.ToString() + ".jpg";
                jmgHeaderImage.ImageUrl = photo.LoadProfileCoverImage(path);
           
       }
        
    }
}