using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using System.Web.Security;
using RHP.Utility;

namespace USA_Rent_House_Project.Masrer_Pages
{
    public partial class Student : System.Web.UI.MasterPage
    {
       User user = new User();
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!Page.IsPostBack)
            {
                if (this.Page.User.Identity.IsAuthenticated)
                {
                    Label login_Name = HeadLoginView.FindControl("LoginName") as Label;
                    login_Name.Text = getUserData();

                }
            }
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                if (Request.QueryString.Count == 0)
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
            }
            else
            { 
                user.LogOut();  //Response.Redirect("~/Login.aspx");
            }
        }

        public string getUserData()
        {
            // user data
            user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

            string name = (string.IsNullOrEmpty(user.FirstName) ? string.Empty : user.FirstName + " ") + (string.IsNullOrEmpty(user.MiddleName) ? string.Empty : user.MiddleName + " ") + (string.IsNullOrEmpty(user.LastName) ? string.Empty : user.LastName);
            return name;
      
        }

        protected void LBLogOut_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            user.LogOut();
        }
    }
}