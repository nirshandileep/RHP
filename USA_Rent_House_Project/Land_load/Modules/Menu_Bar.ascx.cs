using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;
using System.Web.Security;

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class Menu_Bar : System.Web.UI.UserControl
    {
        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {
                    _user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
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
            LeftMenuBar.Items.Clear();
            LeftMenuBar.Items.Add(new MenuItem("Profile", "PublicID", "", "~/Land_load/Land_load_Profile.aspx"));
            LeftMenuBar.Items.Add(new MenuItem("Profile info", "ProfileID", "", "~/Land_load/Land_load_Profile_Edit.aspx"));
            LeftMenuBar.Items.Add(new MenuItem("Properties", "PropertyID", "", "~/Land_load/Land_Load_House.aspx"));
            //LeftMenuBar.Items.Add(new MenuItem("Property Options", "PropertyOptionID", "", "~/Land_load/Land_Load_House_Option_Add.aspx"));
            if (user.IsFBUser == true)
            {

            }
            else
            {
                LeftMenuBar.Items.Add(new MenuItem("Password", "ChangePasswordID", "", "~/Change_Password.aspx"));
                LeftMenuBar.Items.Add(new MenuItem("Secret Question", "ChangeSecretQuestionID", "", "~/Change_Secret_Question.aspx"));
            }
        }
    }
}