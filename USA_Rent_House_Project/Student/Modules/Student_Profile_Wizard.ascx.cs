using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Student_Profile_Wizard : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnStep1_Click(object sender, EventArgs e)
        {
            registrationWizard.ActiveStepIndex = 1;
        }

        protected void btnStep2_Click(object sender, EventArgs e)
        {
           
        }

       

        protected void btnVerify_Click(object sender, EventArgs e)
        {
            //Check if the verification code is correct
            registrationWizard.ActiveStepIndex = 2;
        }

        protected void btnStep3_Click(object sender, EventArgs e)
        {
            //Register the user here, add the user details to the membership tables
            registrationWizard.ActiveStepIndex = 3;

        }

        protected void btnStep4_Click(object sender, EventArgs e)
        {

        }

        protected void btnResend_Click(object sender, EventArgs e)
        {

        }
    }
}