using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.LandlordManagement;
using RHP.Utility;
using RHP.UserManagement;
using System.Data;
using System.Web.Security;
using RHP.Common;

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

            ///1. Check if a land lord has been created for this Base house id, if not create a landlord. Done.
            ///1.1. If there is no landlord created, then we need to create a new user in the user table as well. Done
            ///2. Check if the room is added to the house table as a new house, if not added, add a new record.
            ///3. Insert update the roomid of this student in user table
            ///4. Send the email to the landlord email address. Not done in this release.

            //1.
            int baseHouseId;
            Guid baseHouseLandlordId = Guid.Empty;
            if (int.TryParse(HiddenFieldBaseHouseId.Value, out baseHouseId))
            {
                baseHouseLandlordId = SaveLandload(baseHouseId);
            }

            Guid roomNumber;
            BaseHouseRoom newBaseHouseRoom;
            Guid houseId;
            if (Guid.TryParse(HiddenFieldBaseHouseRoomId.Value.Trim(), out roomNumber))
            {
                newBaseHouseRoom = BaseHouseRoom.Select(roomNumber);
                if (House.SelectByRoomId(roomNumber) == null)
                {
                    //Insert Room to house table
                    
                    House newHouse = new House();
                    newHouse.LandlordId = new Guid();
                    newHouse.StreetAddress = Address.Text;
                    newHouse.City = City.Text;
                    newHouse.StateId = 0;
                    newHouse.BaseHouseRoomId = roomNumber;
                    newHouse.Zip = ZipCode.Text;
                    newHouse.YearHomeBuild = 0;
                    newHouse.BedRooms = 0;
                    newHouse.BathRooms = 0;
                    newHouse.LotSquareFootage = 0;
                    newHouse.TotalSquareFootage = 0;
                    newHouse.UtilitiesIncludedInRent = string.Empty;
                    newHouse.PropertyImagePath = string.Empty;
                    newHouse.IsDeleted = false;
                    newHouse.IsPartialHouse = false;
                    newHouse.CreatedBy = new Guid();
                    newHouse.RatingValue = 0;
                    newHouse.Price = 0;
                    newHouse.Save();
                    
                    newHouse.IsPartialHouse = false;
                    newHouse.StreetAddress = CurrentHouse.Address;
                    newHouse.City = CurrentHouse.City;
                    newHouse.Zip = CurrentHouse.Zip;
                    newHouse.CreatedBy = (Guid)Membership.GetUser().ProviderUserKey;
                    newHouse.UpdatedBy = (Guid)Membership.GetUser().ProviderUserKey;
                    newHouse.LandlordId = baseHouseLandlordId;
                    newHouse.Save();
                }
            }

            //Update user with roomid
            User loggedUser = User.Select((Guid)Membership.GetUser().ProviderUserKey);
            loggedUser.UpdatedBy = (Guid)Membership.GetUser().ProviderUserKey;
            loggedUser.BaseHouseRoomId = roomNumber;
            
            if (loggedUser.Save())
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Student/Student_Profile_Current_House_Details.aspx';}", true);
            }
        }

        public Guid SaveLandload(int baseHouseId)
        {
            Guid landlordId;

            List<BaseHouse> dormHouses = BaseHouseDAO.SelectAllByHouseTypeId(HouseTypeId);
            CurrentHouse = dormHouses.Find(bh => bh.BaseHouseId == baseHouseId);
            if (CurrentHouse.LandlordId.HasValue)
            {
                landlordId = CurrentHouse.LandlordId.Value;
            }
            else
            {
                aspnet_Roles aspnet_Roles_ = new aspnet_Roles();
                Landlord landload = new Landlord();
                aspnet_Roles_ = aspnet_Roles.Select("landlord");

                User Landlorduser = new User();

                Landlorduser.UserId = Guid.NewGuid();
                landlordId = Landlorduser.UserId.Value;

                Landlorduser.PersonalEmail = CurrentHouse.ManagerEmail;
                Landlorduser.FirstName = CurrentHouse.PropertyManagementCompanyName;
                Landlorduser.BestContactNumber = CurrentHouse.PhoneNumber;
                Landlorduser.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                Landlorduser.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                Landlorduser.IsPartialUser = true;
                Landlorduser.RoleId = aspnet_Roles_.RoleId;
                Landlorduser.UpdatedDate = DateTime.Now;

                if (Landlorduser.Save())
                {
                    landload.user = Landlorduser;
                    landload.LandlordId = Landlorduser.UserId.Value;
                    landload.LandlordName = Landlorduser.FirstName;
                    landload.IsDeleted = false;
                    landload.LandlordTypeId = (int)Enums.LandlordType.CorporateLandlord;
                    landload.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    landload.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

                    if (landload.Save())
                    {
                        //Todo: Update the basehouse table with the new LandlordId
                        CurrentHouse.LandlordId = landlordId;
                        CurrentHouse.CreatedBy = Membership.GetUser().UserName;
                        CurrentHouse.UpdatedBy = Membership.GetUser().UserName;
                        if (CurrentHouse.Save())
                        {
                            //Base House is updated with new landlord id
                        }
                    }

                    //string strMsgContent = Landloadmessage(Landlorduser.UserId.Value, Landlorduser);
                    //string strMsgTitle = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " is Requesting you to join with Us.";
                    //int rtn = LandloadSendEmail(Landlorduser.PersonalEmail, strMsgTitle, strMsgContent);
                    //if (rtn == 1)
                    //{
                    //}
                    //Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Student/Student_Profile_Update_Current_House.aspx';}", true);
                }
                //}
                //else
                //{
                //    LandloadLabelmessage.Text = "Landlord Details cannot saved. Please try again!";
                //    // no  Landload id
                //}
            }
            return landlordId;
        }

        protected void RemoveRoommate_Click(object sender, EventArgs e)
        {

            LinkButton lb = (LinkButton)sender;
            GridViewRow gvRow = (GridViewRow)lb.NamingContainer;
            int rowID = gvRow.RowIndex; //+1;

            if (ViewState["CurrentTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["CurrentTable"];
                if (dt.Rows.Count >= 1)
                {
                    if (gvRow.RowIndex <= dt.Rows.Count - 1)
                    {
                        //Remove the Selected Row data
                        dt.Rows.Remove(dt.Rows[rowID]);
                    }
                }

                //Store the current data in ViewState for future reference
                ViewState["CurrentTable"] = dt;

                //Rebind the GridView for the updated data
                GridviewRoommatelist.DataSource = dt;
                GridviewRoommatelist.DataBind();
            }
        }
    }
}