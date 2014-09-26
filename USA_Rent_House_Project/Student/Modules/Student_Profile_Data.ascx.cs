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

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Student_Profile_Data : System.Web.UI.UserControl
    {
        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {

                    _user = new User(); // 

                    if (HttpContext.Current.User.Identity.IsAuthenticated)
                    {
                        _user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
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
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                HyperLinkPublicView.NavigateUrl = "~/Student/Student_Public_Profile.aspx?AccessCode=" + Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                LoadStudent();
            }
        }

        public void LoadStudent()
        {

            if (user.HouseId.HasValue)
            {
              
                //user.HouseId = Guid.Parse("8313D02D-FA75-474A-A93B-0EFD3B817A83");
                List<User> userList = User.SelectUserByHouseId("HouseId", user.HouseId.Value, "RoleName", "student");

                DataListStudentList.DataSource = userList;
                DataListStudentList.DataBind();

                if (userList.Count > 0)
                { currentHomeStudentData.Visible = true; }
            }
        }
    }
}