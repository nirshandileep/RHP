using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using RHP.Common;
using RHP.UserManagement;
using RHP.SessionManager;

namespace USA_Rent_House_Project.Land_load
{
    public partial class Land_Load_House_info_Add : System.Web.UI.Page
    { 
        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {
                    _user = new User();

                    if (HttpContext.Current.User.Identity.IsAuthenticated)
                    {
                        _user = RHP.UserManagement.User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                    }
                }
                else
                {

                }
                Session[Constants.SESSION_LOGGED_USER] = _user;
                return _user;
            }
            set
            {
                _user = value;
                Session[Constants.SESSION_LOGGED_USER] = _user;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Guid houseid;
            if (Guid.TryParse(
                RHP.Utility.Utility.GetQueryStringValueByKey(
                    Request, Constants.QUERYSTRING_HOUSE_ID), out houseid))
            {
                House_info_AddID.HouseId = houseid;
            }

            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                if (user.UserId != null)
                {
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.ProfileInfoError + "'); window.location = '/Land_load/Land_load_Profile_Edit.aspx'; }", true);
                }
            }
        }
    }
}