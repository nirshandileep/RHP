using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.LandlordManagement;
using RHP.Utility;
using RHP.UserManagement;

namespace USA_Rent_House_Project
{
    public partial class Current_House_Dorms : System.Web.UI.UserControl
    {
        public int HouseTypeId
        {
            get
            {
                //Default is considered to be the dorm, might need to look into this later
                int housetypeid = 1;
                int.TryParse(HiddenFieldHouseTypeId.Value.Trim().ToString(), out housetypeid);
                return housetypeid;

            }
            set
            {
                HiddenFieldHouseTypeId.Value = value.ToString();
            }
        }

        private BaseHouse currentHouse;

        public BaseHouse CurrentHouse
        {
            get 
            {
                if (currentHouse == null)
                {
                    currentHouse = HouseFactory.Create((RHP.Common.Enums.HouseType)HouseTypeId);
                }
                return currentHouse;
            }
            set 
            {
                currentHouse = value;
            }
        }

        private void SetData()
        {
            LabelHousingTypeHeader.Text = CurrentHouse.HousingTypeHeader;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            SetData();

            DrpBaseHouse.Attributes.Add("OnChange", "setHouseIdToHiddenField()");
            DrpDromRooms.Attributes.Add("OnChange", "setRoomIdToHiddenField()");

            List<BaseHouse> dormHouses = BaseHouseDAO.SelectAllByHouseTypeId(HouseTypeId);

            //Filter by house type
            DrpBaseHouse.DataSource = dormHouses;
            DrpBaseHouse.DataTextField = "Name";
            DrpBaseHouse.DataValueField = "BaseHouseId";
            DrpBaseHouse.DataBind();
            DrpBaseHouse.Items.Insert(0, new ListItem("--Please Select--", "-1"));

        }

        protected void LBSelectDorm_Click(object sender, EventArgs e)
        {
            Step1.Visible = false;
            DromDetails.Visible = true;
            Step2.Visible = true;
            Step3.Visible = false;

            int baseHouseId = int.Parse(HiddenFieldBaseHouseId.Value);
            List<BaseHouse> dormHouses = BaseHouseDAO.SelectAllByHouseTypeId(HouseTypeId);
            CurrentHouse = dormHouses.Find(bh => bh.BaseHouseId == baseHouseId);
            DrpDromRooms.DataSource = CurrentHouse.HouseRooms;
            DrpDromRooms.DataTextField = "RoomName";
            DrpDromRooms.DataValueField = "BaseHouseRoomId";
            DrpDromRooms.DataBind();
            DrpDromRooms.Items.Insert(0, new ListItem("--Please Select--", "-1"));


            //Load the other details
            ContactName.Text = CurrentHouse.ContactName;
            PhoneNumber.Text = CurrentHouse.PhoneNumber;
            Address.Text = CurrentHouse.Address;
            City.Text = CurrentHouse.City;
            State.Text = CurrentHouse.State;
            ZipCode.Text = CurrentHouse.Zip;

        }

        public BaseHouseRoom CurrentRoom
        {
            get
            {
                int baseHouseRoomId = Int32.Parse(HiddenFieldBaseHouseRoomId.Value.Trim());
                return new BaseHouseRoom();
            }
        }

        protected void LBSelectRoom_Click(object sender, EventArgs e)
        {
            Step1.Visible = false;
            DromDetails.Visible = true;
            Step2.Visible = false;
            Step3.Visible = true;

            RoomNumber.Text = DrpDromRooms.SelectedItem.Text.Trim();
            Guid roomNumber;

            if (Guid.TryParse(DrpDromRooms.SelectedValue.Trim(), out roomNumber))
            {

                List<User> userlist = User.SelectUserByBaseHouseRoomId("BaseHouseRoomId", roomNumber, "rolename", "student");

                GridviewRoommatelist.DataSource = userlist;
                GridviewRoommatelist.DataBind();
            }
        }

        /// <summary>
        /// Last step of the wizzard
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void LBSaveRoomNumber_Click(object sender, EventArgs e)
        {
            Step1.Visible = false;
            DromDetails.Visible = false;
            Step2.Visible = false;
            Step3.Visible = false;
            
            ///1. Check if a land lord has been created for this Base house id, if not create a landlord.
            ///1.1. If there is no landlord created, then we need to create a new user in the user table as well.
            ///2. Check if the room is added to the house table as a new house, if not added need to add a new record.
            ///3. Insert update the roomid of this student in user table
            ///4. Send the email to the landlord email address

            Guid roomNumber;
            BaseHouseRoom newBaseHouseRoom;
            if (Guid.TryParse(HiddenFieldBaseHouseRoomId.Value.Trim(), out roomNumber))
            {
                newBaseHouseRoom = BaseHouseRoom.Select(roomNumber);

                if (House.SelectByRoomId(roomNumber) == null)
                {
                    //Insert Room to house table
                    House newHouse = new House();
                    newHouse.BaseHouseRoomId = roomNumber;
                    //newHouse.
                    //Todo:from here
                }
            }
        }

        protected void RemoveRoommate_Click(object sender, EventArgs e)
        {

        //    LinkButton lb = (LinkButton)sender;

        //    GridViewRow gvRow = (GridViewRow)lb.NamingContainer;

        //    int rowID = gvRow.RowIndex; //+1;

        //    if (ViewState["CurrentTable"] != null)
        //    {

        //        DataTable dt = (DataTable)ViewState["CurrentTable"];

        //        if (dt.Rows.Count >= 1)
        //        {

        //            if (gvRow.RowIndex <= dt.Rows.Count - 1)
        //            {

        //                //Remove the Selected Row data

        //                dt.Rows.Remove(dt.Rows[rowID]);

        //            }

        //        }

        //        //Store the current data in ViewState for future reference

        //        ViewState["CurrentTable"] = dt;

        //        //Re bind the GridView for the updated data

        //        GridviewRoommatelist.DataSource = dt;
        //        GridviewRoommatelist.DataBind();

        //    }

        }
    }
}