using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using System.Web.Security;
using RHP.Common;

namespace USA_Rent_House_Project.Student
{
    public partial class Current_House_Life_Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User user = null;
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                user = RHP.UserManagement.User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

                if (user.HouseId != null)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.ProfileInfoError + "'); window.location = '/Student/Student_Profile.aspx';}", true);

                }
            }
        }
    }
}