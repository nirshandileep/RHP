using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using System.Web.Security;
using RHP.Utility;
using RHP.Common;

namespace USA_Rent_House_Project.Masrer_Pages
{
    public partial class Site_Admin : System.Web.UI.MasterPage
    {
        private User user = new User();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.ClientScript.IsClientScriptBlockRegistered(Constants.GOOGLE_ANALYTICS_KEY))
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), Constants.GOOGLE_ANALYTICS_KEY, SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.GOOGLE_ANALYTICS));
            }            

            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                if (!Roles.IsUserInRole(HttpContext.Current.User.Identity.Name, "admin"))
                {
                    if (Roles.IsUserInRole(HttpContext.Current.User.Identity.Name, "student"))
                    {
                        Response.Redirect("~/Student/Student_Profile.aspx");
                    }
                    else if (Roles.IsUserInRole(HttpContext.Current.User.Identity.Name, "landlord"))
                    {
                        Response.Redirect("~/Land_load/Land_load_Profile.aspx");
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

        public string ConstantS { get; set; }
    }
}