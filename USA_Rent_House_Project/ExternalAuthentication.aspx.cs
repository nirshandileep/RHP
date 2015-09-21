using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Facebook;

namespace USA_Rent_House_Project
{
    public partial class ExternalAuthentication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var client = new FacebookClient();
            dynamic me = client.Get("zuck");

            string firstName = me.first_name;
            string lastName = me.last_name;
        }
    }
}