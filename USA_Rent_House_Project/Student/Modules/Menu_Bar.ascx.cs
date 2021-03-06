﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;
using System.Web.Security;

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

            LeftMenuBar.Items.Clear();
            LeftMenuBar.Items.Add(new MenuItem("Profile", "ProfileinfoID", "", "~/Student/Student_Profile.aspx"));
            
            _user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
            if (_user.HouseId != null)
            {
                LeftMenuBar.Items.Add(new MenuItem("Current Residence", "CurrentHouseID", "", "~/Student/Current_House.aspx"));
            }
            else
            {
                LeftMenuBar.Items.Add(new MenuItem("Current Residence", "CurrentHouseID", "", "~/Student/Current_House.aspx"));
            }

            LeftMenuBar.Items.Add(new MenuItem("Profile Info", "ProfileID", "", "~/Student/Student_Profile_Edit.aspx"));
            LeftMenuBar.Items.Add(new MenuItem("School Info", "SchoolinfoID", "", "~/Student/Student_School_info.aspx"));
            LeftMenuBar.Items.Add(new MenuItem("Spotlight", "SpotlightID", "", "~/Student/Student_Spotlight.aspx"));

               
            if (user.IsFBUser == true)
            {

            }
            else
            {
                LeftMenuBar.Items.Add(new MenuItem("Password", "ChangePasswordID", "", "~/Student/Change_Password.aspx"));
                LeftMenuBar.Items.Add(new MenuItem("Secret Question", "ChangeSecretQuestionID", "", "~/Student/Change_Secret_Question.aspx"));
            }

            LeftMenuBar.Items.Add(new MenuItem("Contact Us", "ContactUsID", "", "~/Student/Contact_Us.aspx"));
        }
    }
}