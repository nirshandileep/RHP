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
                LoadHouseImages();
                LoadProfileImage();
            }
        }


        public void LoadProfileImage()
        {
            Photo photo = new Photo();

            imgStudentProfileImage.ImageUrl = photo.LoadImage(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()), Enums.PhotoCategory.Profile_Picture);
            jmgHeaderImage.ImageUrl = photo.LoadImage(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()), Enums.PhotoCategory.Cover_Picture);
        }

        private void LoadHouseImages()
        {
           Photo photo = new Photo();
                
            user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

                if (user.HouseId.HasValue)
                {

                    hdnHouseId.Value = user.HouseId.Value.ToString();

                    CurrentHouse.NavigateUrl = "~/Land_load/Land_load_Public_Profile.aspx?AccessCode=" + house.LandlordId.ToString() + "&AccessCode2=" + user.HouseId.Value.ToString();

                    imgCurrentHouseImage.ImageUrl = photo.LoadImage(house.LandlordId, Enums.PhotoCategory.House_Picture); 

                    imgLandloadProfileImage.ImageUrl = photo.LoadImage(house.LandlordId, Enums.PhotoCategory.Profile_Picture); 
                    
                }

       }
        
    }
}