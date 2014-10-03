using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.SessionManager;
using RHP.UserManagement;
using RHP.Common;
using RHP.StudentManagement;
using System.Web.Security;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Student_Spotlight : System.Web.UI.UserControl
    {
        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {
                    _user = new User();  //_user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
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


         Spotlight _Spotlight;

         public Spotlight spotlight
        {
            get
            {
                _Spotlight = SessionManager.GetSession<Spotlight>(Constants.SESSION_STUDENT_SPOTLIGHT);
                if (_Spotlight == null)
                {
                    _Spotlight = new Spotlight();
                }
                Session[Constants.SESSION_STUDENT_SPOTLIGHT] = _Spotlight;
                return _Spotlight;
            }
            set
            {
                _Spotlight = value;
                Session[Constants.SESSION_STUDENT_SPOTLIGHT] = _Spotlight;
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loaddata();
            }
        }


        public void loaddata()
        {
            // school data

            spotlight = Spotlight.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

            if (spotlight != null)
            {

            }
        }
        protected void SaveStudent_Spotlight_Click(object sender, EventArgs e)
        {

        }
    }
}