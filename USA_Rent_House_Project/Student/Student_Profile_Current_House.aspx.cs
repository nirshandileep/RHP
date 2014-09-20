using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using USA_Rent_House_Project.Student.Modules;

namespace USA_Rent_House_Project.Student
{
    public partial class Student_Profile_Current_House : System.Web.UI.Page
    {
        
        protected void Page_Init(object sender, EventArgs e)
        {
            Current_House_Landload_infoID.PassID += new Current_House_Landload_info.PassLandlordIDToParent(PassID);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hdnStepNumber.Value = "1";
            }
            loadcontrol();
        }

        protected void PassID(Guid id)
        {
            HiddenFieldLandloadID.Value = id.ToString();
        }

        public void loadcontrol()
        {
            Current_House_Landload_infoID.Visible = false;
            Current_House_Rental_Address_infoID.Visible = false;
            Current_House_RoomMate_infoID.Visible = false;

            switch (hdnStepNumber.Value.Trim())
            {
                case "1":
                    if (!string.IsNullOrEmpty(HiddenFieldLandloadID.Value))
                    {
                        Current_House_Landload_infoID.LandlordId = Guid.Parse(HiddenFieldLandloadID.Value.Trim());
                    }
                    Current_House_Landload_infoID.Visible = true;
                    //Todo: Similar to save method written, write the load method in the user control
                    break;
                case "2":
                    Current_House_Rental_Address_infoID.Visible = true;
                    if (!string.IsNullOrEmpty(HiddenFieldLandloadID.Value))
                    {
                        Current_House_Rental_Address_infoID.LandlordId = Guid.Parse(HiddenFieldLandloadID.Value.Trim());
                    }
                    //Todo: Similar to save method written, write the load method in the user control
                    break;
                case "3":

                    Current_House_RoomMate_infoID.Visible = true;
                    //Todo: Similar to save method written, write the load method in the user control
                    break;
                default:
                    break;
            }
        }

        public void setData()
        {
            HiddenFieldLandloadID.Value = Current_House_Landload_infoID.LandlordId.ToString();
           // LandLordId.Text = Current_House_Landload_infoID.LandlordId.ToString();
        }

        protected void CreateLandloadButton_Click(object sender, EventArgs e)
        {
            switch (hdnStepNumber.Value.Trim())
            {
                case "1":
                    if (String.IsNullOrEmpty(HiddenFieldLandloadID.Value.Trim()))
                    {
                        if (!Current_House_Landload_infoID.LandlordId.HasValue)
                        {
                            Current_House_Landload_infoID.LandlordId = null;
                        }
                      
                    }
                    else
                    {
                        Current_House_Landload_infoID.LandlordId = Guid.Parse(HiddenFieldLandloadID.Value.Trim());
                    }

                   

                    if (Current_House_Landload_infoID.Save())
                    {
                        HiddenFieldLandloadID.Value = Current_House_Landload_infoID.LandlordId.ToString();
                        hdnStepNumber.Value = "2";
                        //Todo: Show a save success message if needed
                    }
                    break;
                case "2":
                    if (String.IsNullOrEmpty(HiddenFieldLandloadID.Value.Trim()))
                    {
                        Current_House_Rental_Address_infoID.LandlordId = null;
                    }
                    else
                    {
                        Current_House_Rental_Address_infoID.LandlordId = Guid.Parse(HiddenFieldLandloadID.Value.Trim());
                    }

                    if (Current_House_Rental_Address_infoID.Save())
                    {
                        HiddenFieldLandloadID.Value = Current_House_Rental_Address_infoID.LandlordId.ToString();
                        HiddenFieldHouseID.Value = Current_House_Rental_Address_infoID.HouseId.ToString();

                        hdnStepNumber.Value = "3";
                        //Todo: Show a save success message if needed
                    }
                    break;
                case "3":
                    if (String.IsNullOrEmpty(HiddenFieldLandloadID.Value.Trim()))
                    {
                        Current_House_RoomMate_infoID.LandlordId = null;
                    }
                    else
                    {
                        Current_House_RoomMate_infoID.LandlordId = Guid.Parse(HiddenFieldLandloadID.Value.Trim());
                    }

                    if (String.IsNullOrEmpty(HiddenFieldHouseID.Value.Trim()))
                    {
                        Current_House_RoomMate_infoID.HouseId = null;
                    }
                    else
                    {
                        Current_House_RoomMate_infoID.HouseId = Guid.Parse(HiddenFieldHouseID.Value.Trim());
                    }

                    if (Current_House_RoomMate_infoID.Save())
                    {
                        //HiddenFieldLandloadID.Value = Current_House_RoomMate_infoID.LandlordId.ToString();
                        //HiddenFieldHouseID.Value = Current_House_RoomMate_infoID.HouseId.ToString();

                        //Todo: write the code here
                        //Todo: Show a save success message if needed
                    }
                    Current_House_RoomMate_infoID.Visible = true;
                    break;
                default:
                    break;
            }

            loadcontrol();
        }
    }
}