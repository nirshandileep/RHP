using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using System.Web.Security;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Current_House_Menu_Bar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loaddata();
        }

        public void loaddata()
        {
            User user = new User();
            user = RHP.UserManagement.User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
            if (user.HouseId != null || user.BaseHouseRoomId != null)
            {
                CreateCurrentHouseButton.Visible = false;
                ViewCurrentHouseButton.Visible = true;
                UpdateCurrentHouseButton.Visible = true;
                LeaveCurrentHouseButton.Visible = true;

                if (user.BaseHouseRoomId != null)
                {
                    UpdateCurrentHouseButton.Visible = false;
                    ViewCurrentHouseButton.Visible = false;
                }

            }
            else
            {
                CreateCurrentHouseButton.Visible = true;
                ViewCurrentHouseButton.Visible = false;
                UpdateCurrentHouseButton.Visible = false;
                LeaveCurrentHouseButton.Visible = false;
            }
        }

    }
}