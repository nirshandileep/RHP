using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.Utility;

namespace USA_Rent_House_Project.Student
{
    public partial class Current_House_Life_View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

            if (AccessCode != string.Empty && AccessCode != null)
            {
                try
                {
                    HyperLinkabout.NavigateUrl = "~/Student/Student_Public_Profile_info.aspx?AccessCode=" + Guid.Parse(AccessCode);
                    HyperLinkPublicView.NavigateUrl = "~/Student/Student_Public_Profile.aspx?AccessCode=" + Guid.Parse(AccessCode);
                }
                catch (Exception ex)
                { }
            }
           
        }
    }
}