using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UM = RHP.UserManagement;

namespace USA_Rent_House_Project.Administrator
{
    public partial class UserList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ucUserList.dsUsers = new UM.UserDAO().SelectAll();
        }
    }
}