using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.Utility;
using RHP.Common;

namespace USA_Rent_House_Project
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.ClientScript.IsClientScriptBlockRegistered(Constants.GOOGLE_ANALYTICS_KEY))
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), Constants.GOOGLE_ANALYTICS_KEY, SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.GOOGLE_ANALYTICS));
            }
        }
    }
}
