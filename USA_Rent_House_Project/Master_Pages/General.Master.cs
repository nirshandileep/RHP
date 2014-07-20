using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace USA_Rent_House_Project.Masrer_Pages
{
    public partial class General : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LBLogOut_Click(object sender, EventArgs e)
        {


            string strFwdUrl = "";

            FormsAuthentication.SignOut();
            Response.Redirect(strFwdUrl, false);


        }
    }
}