using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.Comments;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;
using System.Web.Security;
using System.Data;
using RHP.Utility;
using RHP.Photos;

namespace USA_Rent_House_Project.Administrator.Modules
{
    public partial class Comments_View : System.Web.UI.UserControl
    {

        private User _user = new User();

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

        Comment comment = new Comment();

        protected void Page_Load(object sender, EventArgs e)
        {
            aspxComments.DataSource = comment.SelectDataAll().Tables[0];
            aspxComments.DataBind();
        }
    }
}