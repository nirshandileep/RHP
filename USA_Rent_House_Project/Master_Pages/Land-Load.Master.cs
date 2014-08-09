using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;

namespace USA_Rent_House_Project.Master_Pages
{
    public partial class Land_Load : System.Web.UI.MasterPage
    {
        private User user = new User();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {

            }
            else
            { Response.Redirect("~/Login.aspx"); }
        }

        protected void LBLogOut_Click(object sender, EventArgs e)
        {
            user.LogOut();
        }
    }
}