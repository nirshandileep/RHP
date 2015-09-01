using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using RHP.Utility;
using RHP.Common;
using System.Web.Security;
using RHP.CommunicationManagement;

namespace USA_Rent_House_Project
{
    public partial class Question_Wizard : System.Web.UI.UserControl
    {


        protected void btnStep1_Click(object sender, EventArgs e)
        {
            QuestionWizard.ActiveStepIndex = 1;
        }

        protected void btnStep2_Click(object sender, EventArgs e)
        {
            QuestionWizard.ActiveStepIndex = 2;
        }

        protected void btnStep3_Click(object sender, EventArgs e)
        {
            QuestionWizard.ActiveStepIndex = 3;
        }
    }

      
}