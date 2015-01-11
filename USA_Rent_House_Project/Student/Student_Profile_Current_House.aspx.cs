using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using USA_Rent_House_Project.Student.Modules;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;
using System.Web.Security;

namespace USA_Rent_House_Project.Student
{
    public partial class Student_Profile_Current_House : System.Web.UI.Page
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

                    if (HttpContext.Current.User.Identity.IsAuthenticated)
                    {
                        _user = RHP.UserManagement.User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                    }
                }
                else
                {

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

        protected void Page_Init(object sender, EventArgs e)
        {
            Current_House_Landload_infoID.PassID += new Current_House_Landload_info.PassLandlordIDToParent(PassID);
            Current_House_Rental_Address_infoID.PassHouseID += new Current_House_Rental_Address_info.PassHouseIDToParent(PassHouseID);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hdnStepNumber.Value = "1";
            }

            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                if (user.UserId.HasValue)
                {
                    
                    loadcontrol();
                    // loaddata();
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.ProfileInfoError + "'); window.location = '/Student/Student_Profile_Edit.aspx'; }", true);
                }
            }

            
        }


        public void loaddata()
        {
            //if (user.HouseId != null)
            //{
            //    CreateCurrentHouseButton.Visible = false;
            //    ViewCurrentHouseButton.Visible = true;
            //    UpdateCurrentHouseButton.Visible = true;
            //    LeaveCurrentHouseButton.Visible = true;

            //    if (hdnStepNumber.Value.Trim() != "3")
            //    {
            //        ButtonNext.Visible = true;
            //        CreateLandloadButton.Visible = false;

            //    }
            //    else
            //    {
            //        ButtonNext.Visible = false;
            //        CreateLandloadButton.Visible = true;
            //        CreateLandloadButton.Text = "Save";
            //    }
            //}
            //else
            //{
            //    CreateCurrentHouseButton.Visible = true;
            //    ViewCurrentHouseButton.Visible = false;
            //    UpdateCurrentHouseButton.Visible = false;
            //    LeaveCurrentHouseButton.Visible = false;
            //}
        }

        protected void PassID(Guid id)
        {
            HiddenFieldLandloadID.Value = id.ToString();
            Current_House_Rental_Address_infoID.LandlordId = Guid.Parse(HiddenFieldLandloadID.Value.Trim());
            Current_House_RoomMate_infoID.LandlordId = Guid.Parse(HiddenFieldLandloadID.Value.Trim());
        }

        protected void PassHouseID(Guid id)
        {
            HiddenFieldHouseID.Value = id.ToString();
            Current_House_Rental_Address_infoID.HouseId = Guid.Parse(HiddenFieldHouseID.Value.Trim());
            Current_House_RoomMate_infoID.HouseId = Guid.Parse(HiddenFieldHouseID.Value.Trim());
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
                    CreateLandloadButton.Visible = true;
                    CreateLandloadButton.Text = "Save";
                    ButtonNext.Visible = false;
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

                    }
                    break;
                case "2":


                    if (String.IsNullOrEmpty(HiddenFieldLandloadID.Value.Trim()))
                    {
                        if (!Current_House_Rental_Address_infoID.LandlordId.HasValue)
                        {
                            Current_House_Rental_Address_infoID.LandlordId = null;
                        }

                    }
                    else
                    {
                        Current_House_Rental_Address_infoID.LandlordId = Guid.Parse(HiddenFieldLandloadID.Value.Trim());
                    }

                    if (String.IsNullOrEmpty(HiddenFieldHouseID.Value.Trim()))
                    {
                        if (!Current_House_Rental_Address_infoID.HouseId.HasValue)
                        {
                            Current_House_Rental_Address_infoID.HouseId = null;
                        }
                    }
                    else
                    {
                        Current_House_Rental_Address_infoID.HouseId = Guid.Parse(HiddenFieldHouseID.Value.Trim());
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
                        if (!Current_House_RoomMate_infoID.LandlordId.HasValue)
                        {
                            Current_House_RoomMate_infoID.LandlordId = null;
                        }
                    }
                    else
                    {
                        Current_House_RoomMate_infoID.LandlordId = Guid.Parse(HiddenFieldLandloadID.Value.Trim());
                    }

                    if (String.IsNullOrEmpty(HiddenFieldHouseID.Value.Trim()))
                    {
                        if (!Current_House_Rental_Address_infoID.HouseId.HasValue)
                        {
                            Current_House_Rental_Address_infoID.HouseId = null;
                        }
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

        protected void ButtonNext_Click(object sender, EventArgs e)
        {

            switch (hdnStepNumber.Value.Trim())
            {
                case "1":
                   
                    if (Current_House_Landload_infoID.Next())
                    {
                        HiddenFieldLandloadID.Value = Current_House_Landload_infoID.LandlordId.ToString();
                        hdnStepNumber.Value = "2";

                    }
                    break;
                case "2":



                    if (Current_House_Rental_Address_infoID.Next())
                    {
                        HiddenFieldLandloadID.Value = Current_House_Rental_Address_infoID.LandlordId.ToString();
                        HiddenFieldHouseID.Value = Current_House_Rental_Address_infoID.HouseId.ToString();

                        hdnStepNumber.Value = "3";
                        //Todo: Show a save success message if needed
                    }
                    break;
                case "3":

                    if (Current_House_RoomMate_infoID.Next(true))
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

        protected void UpdateCurrentHouseButton_Click(object sender, EventArgs e)
        {

        }

        protected void LeaveCurrentHouseButton_Click(object sender, EventArgs e)
        {

        }
    }
}