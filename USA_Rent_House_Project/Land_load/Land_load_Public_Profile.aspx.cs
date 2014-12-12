using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.Utility;

namespace USA_Rent_House_Project.Land_load
{
    public partial class Land_load_Public_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Landload_Profile_Comment_Add1.Visible = true;
            }
        }
    }
}