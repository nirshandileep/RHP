using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.Common;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Current_House_Rental_Address_info : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadInitialData();
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


        protected void CreateRentalButton_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            //show step 2
            ((UserControl)this.Parent.FindControl("Current_House_RoomMate_infoID")).Visible = true;
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
    }
}