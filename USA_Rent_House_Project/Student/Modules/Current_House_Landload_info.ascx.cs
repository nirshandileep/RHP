using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Current_House_Landload_info : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateLandloadButton_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            //show step 2
            ((UserControl)this.Parent.FindControl("Current_House_Rental_Address_infoID")).Visible = true;
        }

        protected void ButtonVerify_Click(object sender, EventArgs e)
        {
            if (Email.Text.Trim() != "")
            {
                FirstName.Enabled = true;
                MiddleName.Enabled = true;
                LastName.Enabled = true;
                Mobile.Enabled = true;
            }
            else
            {
                FirstName.Text = "";
                MiddleName.Text = "";
                LastName.Text = "";
                Mobile.Text = "";

                FirstName.Enabled = false;
                MiddleName.Enabled = false;
                LastName.Enabled = false;
                Mobile.Enabled = false;
            }
        }
    }
}