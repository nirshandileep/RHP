using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.LandlordManagement;
using RHP.UserManagement;
using RHP.Common;
using RHP.SessionManager;
using System.Web.Security;
using RHP.Utility;

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class House_Details : System.Web.UI.UserControl
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

        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

                if (AccessCode != string.Empty && AccessCode != null)
                {
                    try
                    {
                        hdnHouseId.Value = AccessCode;
                    }
                    catch (Exception ex)
                    { }
                }

                LoadHouse();
                FillOptions();
            }

        }

        private void LoadHouse()
        {

            Address.Text = house.StreetAddress;
            City.Text = house.City;
            Zip.Text = house.Zip;

            Year.Text = house.YearHomeBuild.HasValue ? house.YearHomeBuild.Value.ToString() : "-";
            BedRooms.Text = house.BedRooms.HasValue ? house.BedRooms.Value.ToString() : "-";
            BathRooms.Text = house.BathRooms.HasValue ? house.BathRooms.Value.ToString() : "-";
            state.Text = house.StateId.HasValue ? house.StateId.Value.ToString() : "-";
            LotSQFootage.Text = house.LotSquareFootage.HasValue ? house.LotSquareFootage.Value.ToString() : string.Empty;
            TotalSQFootage.Text = house.TotalSquareFootage.HasValue ? house.TotalSquareFootage.Value.ToString() : string.Empty;
            Utilities.Text = house.UtilitiesIncludedInRent != null ? house.UtilitiesIncludedInRent : string.Empty;
        }

        private void FillOptions()
        {
            //  HouseId = Guid.Parse(Session[Constants.SESSION_HOUSEID].ToString());

            house = House.Select(HouseId);
       
            if (house.HouseOptionList != null && house.HouseOptionList.Count > 0)
            {
                List<HouseOption> houseOptions = house.HouseOptionList.Where<HouseOption>(v => v.Option.OptionCategoryId == (int)Enums.OptionCategory.Basic_Features).ToList();
                if (houseOptions.Count() > 0)
                {
                    CheckBasicFeatureList(houseOptions);
                }

                houseOptions.Clear();
                houseOptions = house.HouseOptionList.Where<HouseOption>(v => v.Option.OptionCategoryId == (int)Enums.OptionCategory.Furnished_Kitchen).ToList();
                if (houseOptions.Count() > 0)
                {
                    CheckFurnishedKitchenList(houseOptions);
                }

                houseOptions.Clear();
                houseOptions = house.HouseOptionList.Where<HouseOption>(v => v.Option.OptionCategoryId == (int)Enums.OptionCategory.Furnished_Living_Space).ToList();
                if (houseOptions.Count() > 0)
                {
                    CheckFurnishedLivingSpaceList(houseOptions);
                }

                houseOptions.Clear();
                houseOptions = house.HouseOptionList.Where<HouseOption>(v => v.Option.OptionCategoryId == (int)Enums.OptionCategory.Furnished_Rooms).ToList();
                if (houseOptions.Count() > 0)
                {
                    CheckFurnishedRoomsList(houseOptions);
                }
            }
        }

        private void CheckFurnishedRoomsList(List<HouseOption> houseOptions)
        {
            foreach (HouseOption house in houseOptions.Where(house => house.Option.OptionCategoryId == (int)Enums.OptionCategory.Furnished_Rooms).ToList<HouseOption>())
            {
                Furnishedrooms.Items.Add(house.Option.Name);
            }
        }

        private void CheckFurnishedLivingSpaceList(List<HouseOption> houseOptions)
        {
            foreach (HouseOption house in houseOptions.Where(house => house.Option.OptionCategoryId == (int)Enums.OptionCategory.Furnished_Living_Space).ToList<HouseOption>())
            {
                Furnishedlivingspace.Items.Add(house.Option.Name);
            }
        }

        private void CheckFurnishedKitchenList(List<HouseOption> houseOptions)
        {
            List<HouseOption> houseOption = new List<HouseOption>();
            houseOption = houseOptions.Where(house => house.Option.OptionCategoryId == (int)Enums.OptionCategory.Furnished_Kitchen).ToList<HouseOption>();

            foreach (HouseOption house in houseOptions.Where(house => house.Option.OptionCategoryId == (int)Enums.OptionCategory.Furnished_Kitchen).ToList<HouseOption>())
            {
                Furnishedkitchen.Items.Add(house.Option.Name);
            }
        }

        private void CheckBasicFeatureList(List<HouseOption> houseOptions)
        {
            foreach (HouseOption house in houseOptions.Where(house => house.Option.OptionCategoryId == (int)Enums.OptionCategory.Basic_Features).ToList<HouseOption>())
            {
                Features.Items.Add(house.Option.Name);
            }
        }
    }
}