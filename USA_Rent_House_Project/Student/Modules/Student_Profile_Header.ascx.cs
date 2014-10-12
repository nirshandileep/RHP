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
                LoadHouseData();

                LoadStudentImages();
            }
        }


        private void LoadHouseData()
        {
            if(user.HouseId.HasValue)
            {
                hdnHouseId.Value = user.HouseId.Value.ToString();

                string path = "~/uploads/" + house.LandlordId.ToString();
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

              

                path = "~/uploads/" + house.LandlordId.ToString();
                try
                {
                    path = path + "/Profile/" + house.LandlordId.ToString() +".jpg";
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

                
            }

            //hdnHouseId.Value = user.HouseId.Value.ToString();
            //Address.Text = house.StreetAddress;
            //City.Text = house.City;
            //Zip.Text = house.Zip;

            //DRPYear.SelectedValue = house.YearHomeBuild.HasValue ? house.YearHomeBuild.Value.ToString() : "-1";
            //DrpBedRooms.SelectedValue = house.BedRooms.HasValue ? house.BedRooms.Value.ToString() : "-1";
            //DrpBathRooms.SelectedValue = house.BathRooms.HasValue ? house.BathRooms.Value.ToString() : "-1";
            //Drpstate.SelectedValue = house.StateId.HasValue ? house.StateId.Value.ToString() : "-1";
            //LotSQFootage.Text = house.LotSquareFootage.HasValue ? house.LotSquareFootage.Value.ToString() : string.Empty;
            //TotalSQFootage.Text = house.TotalSquareFootage.HasValue ? house.TotalSquareFootage.Value.ToString() : string.Empty;
            //Utilities.Text = house.UtilitiesIncludedInRent != null ? house.UtilitiesIncludedInRent : string.Empty;
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
                        imgStudentProfileImage.ImageUrl = "~/Images/Sample/Noimage.jpg";
                    }
                }
                catch (Exception ec)
                {
                    imgStudentProfileImage.ImageUrl = "~/Images/Sample/Noimage.jpg";
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
        
    }
}