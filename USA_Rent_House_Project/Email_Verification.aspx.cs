using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using RHP.UserManagement;
using RHP.Utility;

namespace USA_Rent_House_Project
{
    public partial class Email_Verification : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (string.IsNullOrEmpty(Utility.GetQueryStringValueByKey(Request, "ActivationKey")))
            {
                DivNotActive.Visible = true;
            }
            else
            {
                Guid userId;
                try
                {
                    userId = new Guid(Utility.GetQueryStringValueByKey(Request, "ActivationKey"));
                }

                catch
                {
                    DivNotActive.Visible = true;
                    return;
                }

                MembershipUser usr = Membership.GetUser(userId);
                if (usr == null)
                    DivNotActive.Visible = true;
                else
                {
                    // Approve the user
                    usr.IsApproved = true;

                    Membership.UpdateUser(usr);
                    Div_Active_User.Visible = true;
                }
            }

           
        }
    }
}