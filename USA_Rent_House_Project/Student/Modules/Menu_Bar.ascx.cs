using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;

namespace USA_Rent_House_Project.Student.Modules
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

            LeftMenuBar.Items.Clear();
            LeftMenuBar.Items.Add(new MenuItem("Profile", "ProfileinfoID", "", "~/Student/Student_Profile.aspx"));
            LeftMenuBar.Items.Add(new MenuItem("Profile info", "ProfileID", "", "~/Student/Student_Profile_Edit.aspx"));
            LeftMenuBar.Items.Add(new MenuItem("School info", "SchoolinfoID", "", "~/Student/Student_School_info.aspx"));
            LeftMenuBar.Items.Add(new MenuItem("Current House", "CurrentHouseID", "", "~/Student/Student_Profile_Current_House.aspx"));
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