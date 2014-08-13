using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.LandlordManagement;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class House_info_Add : System.Web.UI.UserControl
    {
        House house = new House();

        Landlord landload = new Landlord();

        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {
                    _user = new User();
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

        }

        protected void CreatePropertyButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == true)
            {
                try
                {
                    house.StreetAddress = Address.Text.Trim();
                 
                }
                catch (Exception ex)
                {

                }
            }
        }
    }
}