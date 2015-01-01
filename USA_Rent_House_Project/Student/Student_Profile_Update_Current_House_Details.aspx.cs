using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using RHP.LandlordManagement;
using System.Web.Security;
using RHP.Common;
using RHP.Utility;
using System.Data;
using RHP.StudentManagement;

namespace USA_Rent_House_Project.Student
{
    public partial class Student_Profile_Update_Current_House_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadInitialHouseData();
                LoadUserData();
            }
        }

        private void LoadInitialHouseData()
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

        public void LoadUserData()
        {
            UserDAO userDAO = new UserDAO();

           User user = RHP.UserManagement.User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

            if (user.HouseId != null)
            {
                ViewCurrentHouseButton.Visible = true;
                UpdateCurrentHouseButton.Visible = true;

               // LoadHouseData(user);
                loadHouseDatadata(user);
                hdHouseId.Value = user.HouseId.Value.ToString();
                hdUserID.Value = user.UserId.Value.ToString();
            }
            else
            {
                CreateCurrentHouseButton.Visible = true;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.CurrentHouseNoRecords + "'); window.location = '/Student/Student_Profile_Current_House.aspx';}", true);

            }
        }
 
        public void loadHouseDatadata(User user_)
        {
            if (user_.HouseId != null && user_.HouseId != Guid.Empty)
            {
                UserDAO userDAO = new UserDAO();
                DataSet LandlordData = userDAO.SelectLandlordByHouseId(user_.HouseId.Value);

                if (LandlordData != null && LandlordData.Tables[0].Rows.Count > 0)
                {
                    hdLandloadId.Value = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["LandlordId"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["LandlordId"].ToString().Trim();

                }

                DataSet ds = new DataSet();
                ds = new HouseDAO().SelectAllDataset(Guid.Parse(hdLandloadId.Value));
                ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["HouseId"] };

                if (DrpHouse.Items.Count < 1)
                {
                    DrpHouse.DataSource = ds;
                    DrpHouse.DataTextField = "StreetAddress";
                    DrpHouse.DataValueField = "HouseId";
                    DrpHouse.DataBind();
                    DrpHouse.Items.Insert(0, new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));
                }


                HouseEdit.Visible = true;
                // set selected house
                if (user_.HouseId.HasValue)
                {
                    for (int i = 0; i < DrpHouse.Items.Count; i++)
                    {
                        if (DrpHouse.Items[i].Value.ToString().ToLower() == user_.HouseId.ToString().ToLower())
                        {
                            DrpHouse.ClearSelection();
                            DrpHouse.Items[i].Selected = true;
                        }
                    }
                }

                House houseData = House.Select(user_.HouseId.Value);

                if (houseData != null)
                {
                    if (houseData.IsPartialHouse == true)
                    {
                       // HouseSearch.Visible = true;
                        chknotavailable.Visible = true;
                        DrpHouse.Enabled = true;

                        EnableEdit();

                        if (houseData.StateId.HasValue)
                        {

                            for (int i = 0; i < Drpstate.Items.Count; i++)
                            {
                                if (Drpstate.Items[i].Value.ToString().ToLower() == houseData.StateId.ToString().ToLower())
                                {
                                    Drpstate.ClearSelection();
                                    Drpstate.Items[i].Selected = true;
                                }
                            }

                            State state;
                            state = Generic.Get<State>(houseData.StateId.Value);
                            if (state != null)
                            {
                                State.Text = state.StateName;
                            }
                        }

                        Address.Text = houseData.StreetAddress;
                        City.Text = houseData.City;
                        Zip.Text = houseData.Zip;

                        RentalAddress.Text = houseData.StreetAddress;
                        RentalCity.Text = houseData.City;
                        RentalZip.Text = houseData.Zip;
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.CurrentHouseNotPartialHouse + "'); window.location = '/Student/Student_Profile_Current_House_Details.aspx';}", true);

                    }
                }
            }
            else
            {
                CreateCurrentHouseButton.Visible = true;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.CurrentHouseNoRecords + "'); window.location = '/Student/Student_Profile_Current_House.aspx';}", true);

            }

        }
       
        protected void chknotavailable_CheckedChanged(object sender, EventArgs e)
        {
            if (chknotavailable.Checked == true)
            {
                hdHouseId.Value = string.Empty;

                Clear();

                EnableEdit();
            }
            else
            {
                Clear();
                hdHouseId.Value = string.Empty;
                DissableEdit();
            }
        }

        public void Clear()
        {
            RentalAddress.Text = "";
            RentalCity.Text = "";
            RentalZip.Text = "";
        }

        public void EnableEdit()
        {
            RentalAddress.Enabled = true;
            RentalCity.Enabled = true;
            RentalZip.Enabled = true;
            Drpstate.Enabled = true;
        }

        public void DissableEdit()
        {
            Drpstate.Enabled = false;
            RentalAddress.Enabled = false;
            RentalCity.Enabled = false;
            RentalZip.Enabled = false;
        }

        protected void DrpHouse_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DrpHouse.SelectedItem.Value.ToString() != "-1")
            {
                House _house = House.Select(Guid.Parse(DrpHouse.SelectedItem.Value));

                chknotavailable.Checked = false;

                RentalAddress.Text = _house.StreetAddress;
                RentalCity.Text = _house.City;
                RentalZip.Text = _house.Zip;
                Drpstate.SelectedValue = _house.StateId.HasValue ? _house.StateId.Value.ToString() : "-1";

                hdHouseId.Value = _house.HouseId.Value.ToString();

            }
            else
            {
                hdHouseId.Value = string.Empty;
            }
        }

        protected void ButtonHouseEdit_Click(object sender, EventArgs e)
        {
            SaveHouseInfo();
        }

        public bool SaveHouseInfo()
        {
            bool result = true;
            House house = new House();

            if (hdHouseId.Value != string.Empty || hdHouseId.Value != null)
            {
                //if (chknotavailable.Checked == true)
                //{
                    house.HouseId = Guid.Parse(hdHouseId.Value);

                    house.LandlordId = Guid.Parse(hdLandloadId.Value);

                    house.StreetAddress = RentalAddress.Text.Trim();
                    house.City = RentalCity.Text.Trim();
                    house.StateId = Int32.Parse(Drpstate.SelectedValue.Trim());
                    house.Zip = RentalZip.Text.Trim();

                    house.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    house.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    house.IsPartialHouse = true;

                    User user_ = new User();
                    user_.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    user_.HouseId = Guid.Parse(hdHouseId.Value);
                    user_.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    user_.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());


                    if (result = house.Save())
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Student/Student_Profile_Update_Current_House.aspx';}", true);

                      //  Save_Student_House(user_);
                    }
               // }
            }
            else
            {
                if (DrpHouse.SelectedItem.Value.ToString() != "-1")
                {
                    User user_ = new User();
                    user_.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    user_.HouseId = Guid.Parse(hdHouseId.Value);
                    user_.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    user_.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Student/Student_Profile_Update_Current_House.aspx';}", true);

                   // Save_Student_House(user_);
                }
            }

            return result;

        }

        public void Save_Student_House(User user_)
        {
            StudentHouse studentHouse = new StudentHouse();
            // save current house for student
            user_.HouseId = Guid.Parse(hdHouseId.Value);
            user_.UpdateHouse();

            // log house details for futer use
            studentHouse.HouseId = Guid.Parse(hdHouseId.Value);
            studentHouse.UserId = user_.UserId.Value;
            studentHouse.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            studentHouse.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

            studentHouse.Save();


        }

        //public void LoadHouseData(User user_)
        //{

        //    if (user_.HouseId != null)
        //    {
        //        House house = House.Select(user_.HouseId.Value);
        //        if (house.IsPartialHouse == true)
        //        {

        //            if (house != null)
        //            {
        //                hdLandloadId.Value = house.LandlordId.ToString();

        //                if (house.StateId.HasValue)
        //                {
        //                    State state;
        //                    state = Generic.Get<State>(user_.StateId.Value);
        //                    if (state != null)
        //                    {
        //                        State.Text = state.StateName;
        //                    }
        //                }
        //                //State.Text = house.StateId.ToString().ToLower();                     
        //                Address.Text = house.StreetAddress;
        //                City.Text = house.City;
        //                Zip.Text = house.Zip;

        //                HouseEdit.Visible = true;
        //            }
        //        }
        //        else
        //        {

        //        }
        //    }

        //}
        
    }
}