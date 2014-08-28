using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using RHP.Common;

namespace USA_Rent_House_Project.Land_load
{
    public partial class Land_Load_House_info_Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Guid houseid;
            if (Guid.TryParse(
                RHP.Utility.Utility.GetQueryStringValueByKey(
                    Request, Constants.QUERYSTRING_HOUSE_ID), out houseid))
            {
                House_info_AddID.HouseId = houseid;
            }
        }
    }
}