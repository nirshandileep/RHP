using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.Utility;

namespace USA_Rent_House_Project.Land_load
{
    public partial class Land_load_Public_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

            //if (AccessCode != string.Empty && AccessCode != null)
            //{
            //    try
            //    {
            //        HyperLinkHouseDetails.NavigateUrl = "~/Land_load/Land_Load_House_View.aspx?AccessCode=" + AccessCode;
            //       
            //    }
            //    catch (Exception ex)
            //    { }
            //}

            ASPxRating.Value = decimal.Parse("4.00");
        }
    }
}