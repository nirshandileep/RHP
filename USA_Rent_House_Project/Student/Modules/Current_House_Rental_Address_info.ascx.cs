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
using System.Web.Security;
using RHP.StudentManagement;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Current_House_Rental_Address_info : System.Web.UI.UserControl
    {

        User user = new User();

        public Guid? LandlordId
        {
            get
            {
                if (string.IsNullOrEmpty(hdnLandlordId.Value.Trim()))
                {
                    return null;
                }
                else
                {
                    return Guid.Parse(hdnLandlordId.Value.Trim());
                }
            }
            set
            {
                if (value.HasValue)
                {
                    hdnLandlordId.Value = value.Value.ToString();
                }
                else
                {
                    hdnLandlordId.Value = string.Empty;
                }
                
            }
        }

        public Guid? HouseId
        {
            get
            {
                if (string.IsNullOrEmpty(hdHouseId.Value.Trim()))
                {
                    return null;
                }
                else
                {
                    return Guid.Parse(hdHouseId.Value.Trim());
                }
            }
            set
            {
                if (value.HasValue)
                {
                    hdHouseId.Value = value.Value.ToString();
                }
                else
                {
                    hdHouseId.Value = string.Empty;
                }

            }
        }


        StudentHouse studentHouse = new StudentHouse();
        House house = new House();

        private DataSet dsHouseList
        {
            get
            {
                DataSet ds;
                ds = SessionManager.GetSession<DataSet>(Constants.SESSION_HOUSELIST);

                if (ds == null )
                {
                    ds = new HouseDAO().SelectAllDataset(house.LandlordId);
                    ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["HouseId"] };
                    Session[Constants.SESSION_HOUSELIST] = ds;
                }
                else
                {

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

        public delegate void PassHouseIDToParent(Guid houseId);

        public event PassHouseIDToParent PassHouseID;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                LoadInitialData();
                loaddata();
            }

           
        }

        private void LoadInitialData()
        {

            //Drpstate 

            if (Drpstate.Items.Count < 1)
            {
                Drpstate.DataSource = RHP.Utility.Generic.GetAll<State>();
                Drpstate.DataTextField = "StateName";
                Drpstate.DataValueField = "StateId";
                Drpstate.DataBind();
                Drpstate.Items.Insert(0, new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));
            }
        }

        public void loaddata()
        {

            if (LandlordId != null)
            {
                house.LandlordId = LandlordId.Value;

                if (DrpHouse.Items.Count < 1)
                {
                    DrpHouse.DataSource = dsHouseList;
                    DrpHouse.DataTextField = "StreetAddress";
                    DrpHouse.DataValueField = "HouseId";
                    DrpHouse.DataBind();
                    DrpHouse.Items.Insert(0, new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));
                }
            }

            UserDAO userDAO = new UserDAO();
            user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

            if (user.HouseId != null)
            {
                // set selected house
                if (user.HouseId.HasValue)
                {
                    for (int i = 0; i < DrpHouse.Items.Count; i++)
                    {
                        if (DrpHouse.Items[i].Value.ToString().ToLower() == user.HouseId.ToString().ToLower())
                        {
                            DrpHouse.ClearSelection();
                            DrpHouse.Items[i].Selected = true;
                        }
                    }
                }

                House house =  House.Select(user.HouseId.Value);

                if (house != null)
                {
                    HouseSearch.Visible = false;
                    chknotavailable.Visible = false;
                    DrpHouse.Enabled = false;
                    Drpstate.Enabled = false;
                    PassHouseID(house.HouseId.Value);
                    // set selected house details
                    if (house.StateId.HasValue)
                    {
                       
                        for (int i = 0; i < Drpstate.Items.Count; i++)
                        {
                            if (Drpstate.Items[i].Value.ToString().ToLower() == house.StateId.ToString().ToLower())
                            {
                                Drpstate.ClearSelection();
                                Drpstate.Items[i].Selected = true;
                            }
                        }
                    }

                    Address.Text = house.StreetAddress;
                    City.Text = house.City;
                    Zip.Text = house.Zip;
                }
            }
         
        }

        public bool Save()
        {
            bool result = true;

            if (HouseId == null)
            {
                if (chknotavailable.Checked == true)
                {
                    house.LandlordId = LandlordId.Value;

                    house.StreetAddress = Address.Text.Trim();
                    house.City = City.Text.Trim();
                    house.StateId = Int32.Parse(Drpstate.SelectedValue.Trim());
                    house.Zip = Zip.Text.Trim();

                    house.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    house.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    house.IsPartialHouse = true;

                    if (result = house.Save())
                    {
                        HouseId = house.HouseId.Value;
                        if (Save_Student_House())
                        { 

                        }
                        else
                        {
 
                        }
                    }
                }
            }
            else
            {
                if (DrpHouse.SelectedItem.Value.ToString() != "-1")
                {
                    Save_Student_House();
                }
            }

            return result;

        }

        public bool Save_Student_House()
        {
            bool result = true;
            // save current house for student
            user.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            user.HouseId = HouseId.Value;

            if (user.UpdateHouse())
            {
                // log house details 
                studentHouse.HouseId = HouseId.Value;
                studentHouse.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                studentHouse.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                studentHouse.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

                result = studentHouse.Save();
            }

           return result;
        }

        protected void chknotavailable_CheckedChanged(object sender, EventArgs e)
        {
            if (chknotavailable.Checked ==  true)
            {
                HouseId = null;

                Address.Text = "";
                City.Text = "";
                Zip.Text = "";
                Address.Enabled = true;
                City.Enabled = true;
                Zip.Enabled = true;
                Drpstate.Enabled = true;
            }
            else
            {
                Address.Text = "";
                City.Text = "";
                Zip.Text = "";
                Drpstate.Enabled = false;
                Address.Enabled = false;
                City.Enabled = false;
                Zip.Enabled = false;
            }
        }

        protected void DrpHouse_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DrpHouse.SelectedItem.Value.ToString() != "-1")
            {
                House _house = House.Select(Guid.Parse(DrpHouse.SelectedItem.Value));

                chknotavailable.Checked = false;

                Address.Text = _house.StreetAddress;
                City.Text = _house.City;
                Zip.Text = _house.Zip;
                Drpstate.SelectedValue = _house.StateId.HasValue ? _house.StateId.Value.ToString() : "-1";

                HouseId = _house.HouseId;

                PassHouseID(_house.HouseId.Value);
            }
        }

        public bool Next()
        {
            return true;
        }
    }
}