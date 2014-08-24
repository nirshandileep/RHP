using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using RHP.SessionManager;
using RHP.Common;
using RHP.LandlordManagement;
using System.Web.Security;

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class House_List : System.Web.UI.UserControl
    {
        House house = new House();

        private DataSet dsHouseList
        {
            get
            {
                DataSet ds;
                ds = SessionManager.GetSession<DataSet>(Constants.SESSION_HOUSELIST);

                if (ds == null)
                {
                    ds = new HouseDAO().SelectAllDataset(house.LandlordId);
                    ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["HouseId"] };
                    Session[Constants.SESSION_HOUSELIST] = ds;
                }

                return ds;
            }

            set
            {
                DataSet ds;
                ds = new HouseDAO().SelectAllDataset(house.LandlordId);
                ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["HouseId"] };
                Session[Constants.SESSION_HOUSELIST] = ds;
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            LoadHouse();
        }

        public void LoadHouse()
        {
            house.LandlordId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            DataListHouseList.DataSource = dsHouseList;
            DataListHouseList.DataBind();

        }

        protected void DataListHouseList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            DataListHouseList.SelectedIndex = e.Item.ItemIndex;

            Guid HouseId = Guid.Parse(((HiddenField)DataListHouseList.SelectedItem.FindControl("hdnHouseId")).Value);

            Session[Constants.SESSION_HOUSE] = RHP.Utility.Generic.GetByGUID<House>(HouseId);

            string arg = e.CommandArgument.ToString();
            string name = e.CommandName.ToString();

            if (name == "ViewHouse")
            {
                Response.Redirect("~/Land_load/Land_Load_House_info_Add.aspx");
            }
            if (name == "ViewOptions")
            {
                Response.Redirect("~/Land_load/Land_Load_House_Option_Add.aspx");
            }
        }

       
    }
}