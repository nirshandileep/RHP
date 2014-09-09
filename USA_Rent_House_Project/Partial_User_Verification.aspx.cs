using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.Utility;
using System.Web.Security;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;

namespace USA_Rent_House_Project
{
    public partial class Partial_User_Verification : System.Web.UI.Page
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

            if (string.IsNullOrEmpty(Utility.GetQueryStringValueByKey(Request, "ActivationKey")) || string.IsNullOrEmpty(Utility.GetQueryStringValueByKey(Request, "Type")))
            {
                DivNotActive.Visible = true;
            }
            else
            {
                try
                {
                    _user.UserId = new Guid(Utility.GetQueryStringValueByKey(Request, "ActivationKey"));
                    string Type = Utility.GetQueryStringValueByKey(Request, "Type");

                    if (_user.IsPartialUserExist(user))
                    {

                       // _user = User.Select(_user.UserId);

                       // Session[Constants.SESSION_LOGGED_USER] = _user;

                        if (Type == "l")
                        { CreateLand_loadProfile.Visible = true; }
                        else if (Type == "s")
                        { CreateStudentProfile.Visible = true; }
                       
                        
                    }
                    else
                    {
                        DivNotActive.Visible = true;
                        return;
                    }
                }
                catch
                {
                    DivNotActive.Visible = true;
                    return;
                }

                
            }

        }

       
    }
}