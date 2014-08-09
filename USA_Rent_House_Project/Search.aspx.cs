using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.Utility;

namespace USA_Rent_House_Project
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string v = Utility.GetQueryStringValueByKey(Request, "type");
            if (v == "s")
            {
                div_Search.Visible = false;
            }
            else if (v == "l")
            {
                div_Search.Visible = false;
            }
            else
            {
                div_Search.Visible = true;
            }


        }

        protected void ButtonSearchHouse_Click(object sender, EventArgs e)
        {
            Div_Search_House.Visible = true;
            Div_Search_Student.Visible = false;
        }

        protected void ButtonSearchStudent_Click(object sender, EventArgs e)
        {
            Div_Search_Student.Visible = true;
            Div_Search_House.Visible = false;
        }

        protected void FindHome_Click(object sender, EventArgs e)
        {

        }

        protected void FindStudent_Click(object sender, EventArgs e)
        {

        }
    }
}