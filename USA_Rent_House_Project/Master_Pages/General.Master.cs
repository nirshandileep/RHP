using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using System.Web.Security;
using RHP.Common;
using RHP.Utility;

namespace USA_Rent_House_Project.Masrer_Pages
{
    public partial class General : System.Web.UI.MasterPage
    {
        private User user = new User();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Request.Url.ToString().Contains("Default.aspx"))
            {
                Footerbottom1.Visible = false;
            }

            if (!Page.ClientScript.IsClientScriptBlockRegistered(Constants.GOOGLE_ANALYTICS_KEY))
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), Constants.GOOGLE_ANALYTICS_KEY, SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.GOOGLE_ANALYTICS));
            } 
            
            if (!Page.IsPostBack)
            {
                if (this.Page.User.Identity.IsAuthenticated)
                {
                    Label login_Name = HeadLoginView.FindControl("LoginName") as Label;
                    login_Name.Text = getUserData();

                }

            }
        }

        public string getUserData()
        {
            if (Membership.GetUser() == null)
            {
                user.LogOut();
                return string.Empty;
            }

            // user data
            user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

            string name = (string.IsNullOrEmpty(user.FirstName) ? string.Empty : user.FirstName + " ") + (string.IsNullOrEmpty(user.MiddleName) ? string.Empty : user.MiddleName + " ") + (string.IsNullOrEmpty(user.LastName) ? string.Empty : user.LastName);
            return name;

        }
        protected void LBLogOut_Click(object sender, EventArgs e)
        {
            user.LogOut();
        }
    }
}