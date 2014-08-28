using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.LandlordManagement;
using RHP.Common;
using RHP.SessionManager;

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class House_Option_Add : System.Web.UI.UserControl
    {
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

        private House house = new House();
        
        HouseOption houseOption = new HouseOption();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadInitialData();
              //  FillOptions();
            }
        }

        private void FillOptions()
        {
          //  HouseId = Guid.Parse(Session[Constants.SESSION_HOUSEID].ToString());

            house = SessionManager.GetSession<House>(Constants.SESSION_HOUSE); //House.Select(HouseId);
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
            List<ListItem> items = chkFurnishedroomoptions.Items.Cast<ListItem>().ToList();
            foreach (ListItem checkBox in items)
            {
                if (houseOptions.Find(opt => opt.OptionId == int.Parse(checkBox.Value.Trim())) != null)
                {
                    checkBox.Selected = true;
                }
            }
        }

        private void CheckFurnishedLivingSpaceList(List<HouseOption> houseOptions)
        {
            List<ListItem> items = chkFurnishedlivingspaceOptions.Items.Cast<ListItem>().ToList();
            foreach (ListItem checkBox in items)
            {
                if (houseOptions.Find(opt => opt.OptionId == int.Parse(checkBox.Value.Trim())) != null)
                {
                    checkBox.Selected = true;
                }
            }
        }

        private void CheckFurnishedKitchenList(List<HouseOption> houseOptions)
        {
            List<ListItem> items = chkFurnishedkitchenOptions.Items.Cast<ListItem>().ToList();
            foreach (ListItem checkBox in items)
            {
                if (houseOptions.Find(opt => opt.OptionId == int.Parse(checkBox.Value.Trim())) != null)
                {
                    checkBox.Selected = true;
                }
            }
        }

        private void CheckBasicFeatureList(List<HouseOption> houseOptions)
        {
            List<ListItem> items = chkOptionList.Items.Cast<ListItem>().ToList();
            foreach(ListItem checkBox in items)
            {
                if (houseOptions.Find(opt => opt.OptionId == int.Parse(checkBox.Value.Trim())) != null)
                {
                    checkBox.Selected = true;
                }
            }
        }

        private void LoadInitialData()
        {
            chkOptionList.DataSource = RHP.Utility.Generic.GetAllByFieldValue<Option>("OptionCategoryId", (int)RHP.Common.Enums.OptionCategory.Basic_Features);
            chkOptionList.DataTextField = "Name";
            chkOptionList.DataValueField = "OptionId";
            chkOptionList.DataBind();

            chkFurnishedroomoptions.DataSource = RHP.Utility.Generic.GetAllByFieldValue<Option>("OptionCategoryId", (int)RHP.Common.Enums.OptionCategory.Furnished_Rooms);
            chkFurnishedroomoptions.DataTextField = "Name";
            chkFurnishedroomoptions.DataValueField = "OptionId";
            chkFurnishedroomoptions.DataBind();

            chkFurnishedkitchenOptions.DataSource = RHP.Utility.Generic.GetAllByFieldValue<Option>("OptionCategoryId", (int)RHP.Common.Enums.OptionCategory.Furnished_Kitchen);
            chkFurnishedkitchenOptions.DataTextField = "Name";
            chkFurnishedkitchenOptions.DataValueField = "OptionId";
            chkFurnishedkitchenOptions.DataBind();

            chkFurnishedlivingspaceOptions.DataSource = RHP.Utility.Generic.GetAllByFieldValue<Option>("OptionCategoryId", (int)RHP.Common.Enums.OptionCategory.Furnished_Living_Space);
            chkFurnishedlivingspaceOptions.DataTextField = "Name";
            chkFurnishedlivingspaceOptions.DataValueField = "OptionId";
            chkFurnishedlivingspaceOptions.DataBind();
        }

        public void AddPropertyInfo()
        {
            house = House.Select(HouseId);
            if (house == null)
                house = new House();

            if (house.HouseOptionList == null)
            {
                house.HouseOptionList = new List<HouseOption>();
            }
         // house.HouseOptionList.Clear();
            foreach (ListItem item in chkOptionList.Items)
            {
                if (item.Selected)
                {
                    HouseOption option = new HouseOption();
                    option.OptionId = int.Parse(item.Value);
                    house.HouseOptionList.Add(option);
                }
            }

            foreach (ListItem item in chkFurnishedroomoptions.Items)
            {
                if (item.Selected)
                {
                    HouseOption option = new HouseOption();
                    option.OptionId = int.Parse(item.Value);
                    house.HouseOptionList.Add(option);
                }
            }

            foreach (ListItem item in chkFurnishedlivingspaceOptions.Items)
            {
                if (item.Selected)
                {
                    HouseOption option = new HouseOption();
                    option.OptionId = int.Parse(item.Value);
                    house.HouseOptionList.Add(option);
                }
            }

            foreach (ListItem item in chkFurnishedkitchenOptions.Items)
            {
                if (item.Selected)
                {
                    HouseOption option = new HouseOption();
                    option.OptionId = int.Parse(item.Value);
                    house.HouseOptionList.Add(option);
                }
            }

            if (houseOption.Save())
            {

            }
        }

        protected void AddPropertyOptionButton_Click(object sender, EventArgs e)
        {
            AddPropertyInfo();
        }
        
    }
}