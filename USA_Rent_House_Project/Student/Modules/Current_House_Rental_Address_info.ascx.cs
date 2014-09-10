using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.Common;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.LandlordManagement;
using System.Data;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Current_House_Rental_Address_info : System.Web.UI.UserControl
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
            if(IsPostBack)
            {
                LoadInitialData();
                loaddata();
            }
        }

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
                else { 
                
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

        private void LoadInitialData()
        {
          
            //Drpstate
            Drpstate.DataSource = RHP.Utility.Generic.GetAll<State>();
            Drpstate.DataTextField = "StateName";
            Drpstate.DataValueField = "StateId";
            Drpstate.DataBind();
            Drpstate.Items.Insert(0, new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));

        }

        public void loaddata()
        {

            if (ViewState["HiddenFieldLandloadID"] != null)
            {
                house.LandlordId = Guid.Parse(ViewState["HiddenFieldLandloadID"].ToString());


                   DrpHouse.DataSource = dsHouseList;
                   DrpHouse.DataTextField = "StreetAddress";
                   DrpHouse.DataValueField = "HouseId";
                   DrpHouse.DataBind();
                   DrpHouse.Items.Insert(0, new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));
            }
         
        }
        protected void CreateRentalButton_Click(object sender, EventArgs e)
        {
            //this.Visible = false;
            ////show step 2
            //((UserControl)this.Parent.FindControl("Current_House_RoomMate_infoID")).Visible = true;
        }

        public bool Save()
        {
            throw new NotImplementedException("Write the code");
        }

        protected void chknotavailable_CheckedChanged(object sender, EventArgs e)
        {
            if (chknotavailable.Checked ==  true)
            {
                Address.Enabled = true;
                City.Enabled = true;
                Zip.Enabled = true;
            }
            else
            {
                Address.Text = "";
                City.Text = "";
                Zip.Text = "";

                Address.Enabled = false;
                City.Enabled = false;
                Zip.Enabled = false;
            }
        }

        protected void DrpHouse_SelectedIndexChanged(object sender, EventArgs e)
        {
            House _house = House.Select(Guid.Parse(DrpHouse.SelectedItem.Value));

            Address.Text = _house.StreetAddress;
            City.Text = _house.City;
            Zip.Text = _house.Zip;
            Drpstate.SelectedValue = _house.StateId.HasValue ? _house.StateId.Value.ToString() : "-1";

        }
    }
}