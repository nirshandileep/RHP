using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.SessionManager;
using RHP.Common;
using RHP.UserManagement;
using System.Web.Security;

namespace USA_Rent_House_Project.Student
{
    public partial class Student_Profile_Current_House_Details : System.Web.UI.Page
    {
        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {
                    _user = new User(); // _user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
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

            LoadUserData();
        }

        public void LoadUserData()
        {

            UserDAO userDAO = new UserDAO();

            user = RHP.UserManagement.User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

            if (user.HouseId != null)
            {
                ViewCurrentHouseButton.Visible = true;
                UpdateCurrentHouseButton.Visible = true;

            }
            else
            {
                CreateCurrentHouseButton.Visible = true;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.CurrentHouseNoRecords + "'); window.location = '/Student/Student_Profile_Current_House.aspx';}", true);

            }
        }
    }
}