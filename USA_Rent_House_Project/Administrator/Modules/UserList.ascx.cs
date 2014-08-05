using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace USA_Rent_House_Project.Administrator.Modules
{
    public partial class UserList : System.Web.UI.UserControl
    {
        public DataSet dsUsers;

        protected void Page_Load(object sender, EventArgs e)
        {
            gvUsers.DataSource = dsUsers;
            gvUsers.DataBind();
        }
    }
}