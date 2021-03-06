﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Ctr_QuickLinks : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                HyperLinkPublicView.NavigateUrl = "~/Student/Student_Public_Profile.aspx?AccessCode=" + Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                
            }
        }
    }
}