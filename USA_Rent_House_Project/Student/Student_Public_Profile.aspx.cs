using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using RHP.Utility;
using RHP.Common;
using RHP.SessionManager;

namespace USA_Rent_House_Project.Student
{
    public partial class Student_Public_Profile : System.Web.UI.Page
    {
        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
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
            ShowHideCommentsAdd();
        }

        private void ShowHideCommentsAdd()
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {

                string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");
                User currentProfileUser = RHP.UserManagement.User.Select(Guid.Parse(AccessCode));

                //Check if the user is the same as the logged users id
                if (currentProfileUser == null || currentProfileUser.HouseId == null)
                {
                    Student_Profile_Comment_Add1.Visible = false;
                }
                else
                {
                    if (currentProfileUser.HouseId == user.HouseId)
                    {
                        Student_Profile_Comment_Add1.Visible = true;
                    }
                    else
                    {
                        Student_Profile_Comment_Add1.Visible = false;
                    }
                }
            }
        }
    }
}