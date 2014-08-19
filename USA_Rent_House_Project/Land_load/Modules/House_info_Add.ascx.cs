using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.LandlordManagement;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class House_info_Add : System.Web.UI.UserControl
    {
        House house = new House();
        Landlord landload = new Landlord();

        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {
                    _user = new User();
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

        public Guid? LandlordId
        {
            get
            {
                if (hdnLandLordId.Value.Trim() == string.Empty)
                {
                    return (Guid?)null;
                }
                else
                {
                    return new Guid(hdnLandLordId.Value.Trim());
                }
            }
            set 
            {
                hdnLandLordId.Value = value.HasValue ? value.Value.ToString() : string.Empty;
            }
        }

        public Guid? HouseId
        {
            get
            {
                if (hdnHouseId.Value.Trim() == string.Empty)
                {
                    return (Guid?)null;
                }
                else
                {
                    return new Guid(hdnHouseId.Value.Trim());
                }
            }
            set
            {
                hdnHouseId.Value = value.HasValue ? value.Value.ToString() : string.Empty;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadInitialData();
                LoadHouse();
            }
        }

        private void LoadInitialData()
        {
            //DRPYear
            DRPYear.Items.Clear();
            DRPYear.Items.Add(new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));
            for (int i = Constants.LANDLORD_PROFILE_HOUSEBUILD_STARTING_YEAR; i <= Constants.LANDLORD_PROFILE_HOUSEBUILD_NUMBER_OF_YEARS + Constants.LANDLORD_PROFILE_HOUSEBUILD_STARTING_YEAR; i++)
            {
                DRPYear.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }

            //Drpstate
            Drpstate.DataSource = RHP.Utility.Generic.GetAll<State>();
            Drpstate.DataTextField = "StateName";
            Drpstate.DataValueField = "StateId";
            Drpstate.DataBind();
            Drpstate.Items.Insert(0, new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));

            //DrpBathRooms
            DrpBathRooms.Items.Clear();
            for (int i = Constants.LANDLORD_PROFILE_HOUSEBUILD_BATHROOMS_MIN; i <= Constants.LANDLORD_PROFILE_HOUSEBUILD_BATHROOMS_MIN + Constants.LANDLORD_PROFILE_HOUSEBUILD_BATHROOMS; i++)
            {
                DrpBathRooms.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
            DrpBathRooms.Items.Insert(0, new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));

            //DrpBedRooms
            DrpBedRooms.Items.Clear();
            for (int i = Constants.LANDLORD_PROFILE_HOUSEBUILD_BEDROOMS_MIN; i <= Constants.LANDLORD_PROFILE_HOUSEBUILD_BEDROOMS_MIN + Constants.LANDLORD_PROFILE_HOUSEBUILD_BEDROOMS; i++)
            {
                DrpBedRooms.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
            DrpBedRooms.Items.Insert(0, new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));
        }

        private void LoadHouse()
        {
            Guid houseId;
            if (hdnHouseId.Value.Trim() != string.Empty && Guid.TryParse(hdnHouseId.Value.Trim(), out houseId))
            {
                House house = RHP.Utility.Generic.GetByGUID<House>(houseId);
                Address.Text = house.StreetAddress;
                City.Text = house.City;
                Drpstate.SelectedValue = house.StateId.HasValue ? house.StateId.Value.ToString() : "-1";
                Zip.Text = house.Zip;
                DRPYear.SelectedValue = house.YearHomeBuild.Value.ToString();
            }
        }

        protected void CreatePropertyButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == true)
            {
                try
                {
                    house.HouseId = HouseId.Value;
                    house.LandlordId = LandlordId.Value;
                    
                    house.StreetAddress = Address.Text.Trim();
                    house.City = City.Text.Trim();
                    house.StateId = Int32.Parse(Drpstate.SelectedValue.Trim());
                    house.Zip = Zip.Text.Trim();
                    house.YearHomeBuild = int.Parse(DRPYear.SelectedValue.Trim());
                    house.BedRooms = int.Parse(DrpBedRooms.SelectedValue.Trim());
                    house.BathRooms = int.Parse(DrpBathRooms.SelectedValue.Trim());
                    house.LotSquareFootage = LotSQFootage.Text.Trim() == string.Empty ? Decimal.Zero : Decimal.Parse(LotSQFootage.Text.Trim());
                    house.TotalSquareFootage = TotalSQFootage.Text.Trim() == string.Empty ? Decimal.Zero : Decimal.Parse(TotalSQFootage.Text.Trim());
                    house.UtilitiesIncludedInRent = Utilities.Text.Trim();

                    house.UpdatedBy = user.UserId.Value;
                    house.CreatedBy = user.UserId.Value;

                    if (house.Save())
                    {
                        //Save true
                    }
                    else
                    {
                            //Save error
                    }

                }
                catch (Exception ex)
                {

                }
            }
        }
    }
}