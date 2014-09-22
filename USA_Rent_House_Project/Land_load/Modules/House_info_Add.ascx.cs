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
using System.Web.Security;
using System.Data;

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class House_info_Add : System.Web.UI.UserControl
    {

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

        private User _user;
        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {
                    _user = new User();  //_user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
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
                Address.Text = house.StreetAddress;
                City.Text = house.City;
                Zip.Text = house.Zip;

                DRPYear.SelectedValue = house.YearHomeBuild.HasValue ? house.YearHomeBuild.Value.ToString() : "-1";
                DrpBedRooms.SelectedValue = house.BedRooms.HasValue ? house.BedRooms.Value.ToString() : "-1";
                DrpBathRooms.SelectedValue = house.BathRooms.HasValue ? house.BathRooms.Value.ToString() : "-1";
                Drpstate.SelectedValue = house.StateId.HasValue ? house.StateId.Value.ToString() : "-1";
                LotSQFootage.Text = house.LotSquareFootage.HasValue ? house.LotSquareFootage.Value.ToString() : string.Empty;
                TotalSQFootage.Text = house.TotalSquareFootage.HasValue ? house.TotalSquareFootage.Value.ToString() : string.Empty;
                Utilities.Text = house.UtilitiesIncludedInRent != null ? house.UtilitiesIncludedInRent : string.Empty;
        }

        public void CreateHouse()
        {
            if (Page.IsValid == true)
            {
                try
                {

                    house.LandlordId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    house.StreetAddress = Address.Text.Trim();
                    house.City = City.Text.Trim();
                    house.StateId = Int32.Parse(Drpstate.SelectedValue.Trim());
                    house.Zip = Zip.Text.Trim();
                    house.YearHomeBuild = int.Parse(DRPYear.SelectedValue.Trim());
                    house.BedRooms = int.Parse(DrpBedRooms.SelectedValue.Trim());
                    house.BathRooms = int.Parse(DrpBathRooms.SelectedValue.Trim());
                    house.LotSquareFootage = LotSQFootage.Text.Trim() == string.Empty ? 0 : Int32.Parse(LotSQFootage.Text.Trim());
                    house.TotalSquareFootage = TotalSQFootage.Text.Trim() == string.Empty ? 0 : Int32.Parse(TotalSQFootage.Text.Trim());
                    house.UtilitiesIncludedInRent = Utilities.Text.Trim();

                    house.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());// user.UserId.Value;
                    house.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());// user.UserId.Value;

                    if (house.Save())
                    {
                        DataSet ds;
                        ds = new HouseDAO().SelectAllDataset(house.LandlordId);
                        ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["HouseId"] };
                        Session[Constants.SESSION_HOUSELIST] = ds;

                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Land_load/Land_Load_House_Option_Add.aspx'; }", true);
                                
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Unsuccess + "'); }", true);
                       
                        //Save error
                    }

                }
                catch (Exception ex)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Unsuccess + "'); }", true);
                }
            }
           
        }

        protected void CreatePropertyButton_Click(object sender, EventArgs e)
        {
            CreateHouse();
        }



        
    }
}