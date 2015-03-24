using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Current_House_Dorms : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LBSelectDorm_Click(object sender, EventArgs e)
        {
            Step1.Visible = false;
            DromDetails.Visible = true;
            Step2.Visible = true;
            Step3.Visible = false;
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