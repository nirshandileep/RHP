using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.LandlordManagement;

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
            //string selectedoptions = RHP.Utility.Generic.GetByGUID<House>()

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