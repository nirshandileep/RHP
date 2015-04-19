using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.LandlordManagement;
using RHP.Utility;

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

            List<BaseHouse> dormHouses = BaseHouseDAO.SelectAllByHouseTypeId(HouseTypeId);

            //Filter by house type
            DrpBaseHouse.DataSource = dormHouses;
            DrpBaseHouse.DataTextField = "Name";
            DrpBaseHouse.DataValueField = "BaseHouseId";
            DrpBaseHouse.DataBind();
            DrpBaseHouse.Items.Add(new ListItem("--Please Select--", "-1"));

        }

        protected void LBSelectDorm_Click(object sender, EventArgs e)
        {
            Step1.Visible = false;
            DromDetails.Visible = true;
            Step2.Visible = true;
            Step3.Visible = false;

            int baseHouseId = int.Parse(HiddenFieldBaseHouseId.Value);
            //Todo:LoadTheRooms
            List<BaseHouse> dormHouses = BaseHouseDAO.SelectAllByHouseTypeId(HouseTypeId);
            CurrentHouse = dormHouses.Find(bh => bh.BaseHouseId == baseHouseId);
            DrpDromRooms.DataSource = CurrentHouse.HouseRooms;
            DrpDromRooms.DataTextField = "RoomName";
            DrpDromRooms.DataValueField = "BaseHouseRoomId";
            DrpDromRooms.DataBind();
            DrpDromRooms.Items.Add(new ListItem("--Please Select--", "-1"));
        }

        protected void LBSelectRoom_Click(object sender, EventArgs e)
        {
            Step1.Visible = false;
            DromDetails.Visible = true;
            Step2.Visible = false;
            Step3.Visible = true;

        }

        protected void LBSaveRoomNumber_Click(object sender, EventArgs e)
        {
            Step1.Visible = false;
            DromDetails.Visible = false;
            Step2.Visible = false;
            Step3.Visible = false;
        }
    }
}