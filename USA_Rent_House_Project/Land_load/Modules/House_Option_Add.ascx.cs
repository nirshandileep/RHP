using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.LandlordManagement;
using RHP.Common;

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

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadInitialData();
                FillOptions();
            }
        }

        private void FillOptions()
        {
            House house = House.Select(HouseId);
            if (house != null && house.HouseOptionList.Count > 0)
            {
                if (house.HouseOptionList.Select(items => items.Option.OptionCategoryId == (int)Enums.OptionCategory.Basic_Features).Count() > 0)
                {
                    CheckBasicFeatureList();
                }

                if (house.HouseOptionList.Select(items => items.Option.OptionCategoryId == (int)Enums.OptionCategory.Furnished_Kitchen).Count() > 0)
                {
                    CheckFurnishedKitchenList();
                }

                if (house.HouseOptionList.Select(items => items.Option.OptionCategoryId == (int)Enums.OptionCategory.Furnished_Living_Space).Count() > 0)
                {
                    CheckFurnishedLivingSpaceList();
                }

                if (house.HouseOptionList.Select(items => items.Option.OptionCategoryId == (int)Enums.OptionCategory.Furnished_Rooms).Count() > 0)
                {
                    CheckFurnishedRoomsList();
                }
            }

        }

        private void CheckFurnishedRoomsList()
        {
            foreach (CheckBox cb in chkFurnishedroomoptions.Items)
            {
                //if (cb.)
                //{
                    
                //}
                ////Todo check the checkbox
            }
        }

        private void CheckFurnishedLivingSpaceList()
        {
            foreach (CheckBox cb in chkFurnishedlivingspaceOptions.Items)
            {
                //Todo check the checkbox
            }
        }

        private void CheckFurnishedKitchenList()
        {
            foreach (CheckBox cb in chkFurnishedkitchenOptions.Items)
            {
                //Todo check the checkbox
            }
        }

        private void CheckBasicFeatureList()
        {
            List<ListItem> items = chkOptionList.Items.Cast<ListItem>().ToList();
            foreach(CheckBox cb in chkOptionList.Items)
            {
                //Todo check the checkbox
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

        protected void AddPropertyOptionButton_Click(object sender, EventArgs e)
        {

        }
    }
}