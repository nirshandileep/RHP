using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using System.Web.Security;

namespace USA_Rent_House_Project.Student
{
    public partial class Current_House : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Update user with roomid
            User loggedUser = RHP.UserManagement.User.Select((Guid)Membership.GetUser().ProviderUserKey);
            
            if (loggedUser.BaseHouseRoomId.HasValue)
            {
                Response.Redirect("Student_Profile_Current_House_Details.aspx", false);
                //Response.Redirect("Student_Profile_Current_House.aspx", false);
            }
        }

        protected void LinkButtonAddHouse_Click(object sender, EventArgs e)
        {
            HiddenFieldStep.Value = "Step2";
            Step1.Visible = false;
            Step2.Visible = true;
        }

        protected void LinkButtonOnCampus_Click(object sender, EventArgs e)
        {
            HiddenFieldStep.Value = "Step3";
            Step1.Visible = false;
            Step2.Visible = false;
            Step3.Visible = true;
        }

        protected void LinkButtonOffCampus_Click(object sender, EventArgs e)
        {
            HiddenFieldStep.Value = "Step4";
            Step1.Visible = false;
            Step2.Visible = false;
            Step3.Visible = false;
            Step4.Visible = true;
        }
    }
}