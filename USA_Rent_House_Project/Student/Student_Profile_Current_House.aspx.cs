using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace USA_Rent_House_Project.Student
{
    public partial class Student_Profile_Current_House : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hdnStepNumber.Value = "1";
            }

            loadcontrol();
        }


        public void loadcontrol()
        {
            Current_House_Landload_infoID.Visible = false;
            Current_House_Rental_Address_infoID.Visible = false;
            Current_House_RoomMate_infoID.Visible = false;

            switch (hdnStepNumber.Value.Trim())
            {
                case "1":
                    Current_House_Landload_infoID.Visible = true;
                    //Todo: Similar to save method written, write the load method in the user control
                    break;
                case "2":
                    Current_House_Rental_Address_infoID.Visible = true;
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

        protected void CreateLandloadButton_Click(object sender, EventArgs e)
        {
            switch (hdnStepNumber.Value.Trim())
            {
                case "1":
                    if (Current_House_Landload_infoID.Save())
                    {
                        hdnStepNumber.Value = "2";
                        //Todo: Show a save success message if needed
                    }
                    break;
                case "2":
                    if (Current_House_Rental_Address_infoID.Save())
                    {
                        hdnStepNumber.Value = "3";
                        //Todo: Show a save success message if needed
                    }
                    break;
                case "3":
                    if (Current_House_RoomMate_infoID.Save())
                    {
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