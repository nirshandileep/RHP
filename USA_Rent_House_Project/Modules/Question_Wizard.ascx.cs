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

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                QuestionWizard.ActiveStepIndex = 0;
            }
        }

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

        protected void ddlMyUniversity_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlMyUniversity.SelectedValue.Trim() == "UCR")
            {
                divUniAddress.Visible = false;
                divUniName.Visible = false;
            }
            else
            {
                divUniAddress.Visible = true;
                divUniName.Visible = true;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlTypeOfResidence.SelectedValue.Trim() == "On Campus")
            {
                ddlOnCampusSelection.Visible = true;
                ddlOffCampusSelection.Visible = false;
            }
            else
            {
                ddlOnCampusSelection.Visible = false;
                ddlOffCampusSelection.Visible = true;
            }
        }

        public RHP.Survey.SurveyEntity SurveySubmission { get; set; }

        protected void btnStep4_Click(object sender, EventArgs e)
        {
            SurveySubmission = new RHP.Survey.SurveyEntity();

            ///Step 1
            SurveySubmission.MyUniversity = ddlMyUniversity.SelectedValue.Trim() == "UCR" ? ddlMyUniversity.SelectedValue.Trim() : txtUniversityName.Text.Trim();
            SurveySubmission.UniversityName = txtUniversityName.Text.Trim();
            SurveySubmission.UniversityAddress = txtUniversityAddress.Text.Trim();

            ///Step 2
            SurveySubmission.TypeOfResidence = ddlTypeOfResidence.SelectedValue.Trim();
            SurveySubmission.TypeOfResidenceOption = ddlTypeOfResidence.SelectedValue.Trim() == "On Campus" ? ddlOnCampusSelection.SelectedValue.Trim() : ddlOffCampusSelection.SelectedValue.Trim();

            ///Step 3
            SurveySubmission.NameOfResidence = txtNameofResidence.Text.Trim();
            SurveySubmission.AddressOfResidence = txtAddressofResidence.Text.Trim();

            ///Step 4
            SurveySubmission.Email = txtEmail.Text.Trim();

            if (RHP.Survey.SurveyDAO.Insert(SurveySubmission))
            {
                Response.Redirect("~/Default.aspx", false);
            }
        }

        protected void QuestionWizard_Load(object sender, EventArgs e)
        {

        }



    }

      
}