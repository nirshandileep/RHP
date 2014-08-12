using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using System.Web.Security;

namespace USA_Rent_House_Project.Masrer_Pages
{
    public partial class Student : System.Web.UI.MasterPage
    {
       User user = new User();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {

                if (!Roles.IsUserInRole(HttpContext.Current.User.Identity.Name, "student"))
                {
                    if (Roles.IsUserInRole(HttpContext.Current.User.Identity.Name, "landlord"))
                    {
                        Response.Redirect("~/Land_load/Land_load_Profile.aspx");
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