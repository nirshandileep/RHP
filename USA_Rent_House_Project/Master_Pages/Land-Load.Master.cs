using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using System.Web.Security;

namespace USA_Rent_House_Project.Master_Pages
{
    public partial class Land_Load : System.Web.UI.MasterPage
    {
        private User user = new User();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                if (!Roles.IsUserInRole(HttpContext.Current.User.Identity.Name, "landlord"))
                {
                    if (Roles.IsUserInRole(HttpContext.Current.User.Identity.Name, "student"))
                    {
                        Response.Redirect("~/Student/Student_Profile.aspx");
                    }
                    else if (Roles.IsUserInRole(HttpContext.Current.User.Identity.Name, "admin"))
                    {
                        Response.Redirect("~/Administrator/Default.aspx");
                    }
                    else
                    {
                        Response.Redirect("~/Default.aspx");
                    }
                }
                else
                {
                   // user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                   
                }
            }
            else
            {
                user.LogOut();  //Response.Redirect("~/Login.aspx");
            }
        }

        protected void LBLogOut_Click(object sender, EventArgs e)
        {
            user.LogOut();
        }
    }
}