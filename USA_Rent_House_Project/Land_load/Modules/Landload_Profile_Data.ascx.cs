﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class Landload_Profile_Data : System.Web.UI.UserControl
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
            LeftMenuBar.Items.Add(new MenuItem("Profile", "ProfileID", "", "~/Land_load/Land_load_Profile_Edit.aspx"));
            LeftMenuBar.Items.Add(new MenuItem("Properties", "PropertyID", "", "~/Land_load/Land_Load_House_info_Add.aspx"));
            LeftMenuBar.Items.Add(new MenuItem("Property Options", "PropertyOptionID", "", "~/Land_load/Land_Load_House_Option_Add.aspx"));
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