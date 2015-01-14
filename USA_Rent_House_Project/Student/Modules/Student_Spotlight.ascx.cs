using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.SessionManager;
using RHP.UserManagement;
using RHP.Common;
using RHP.StudentManagement;
using System.Web.Security;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Student_Spotlight : System.Web.UI.UserControl
    {
      
         Spotlight _Spotlight;

         public Spotlight spotlight
        {
            get
            {
                _Spotlight = SessionManager.GetSession<Spotlight>(Constants.SESSION_STUDENT_SPOTLIGHT);
                if (_Spotlight == null)
                {
                    _Spotlight = new Spotlight();
                }
                Session[Constants.SESSION_STUDENT_SPOTLIGHT] = _Spotlight;
                return _Spotlight;
            }
            set
            {
                _Spotlight = value;
                Session[Constants.SESSION_STUDENT_SPOTLIGHT] = _Spotlight;
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadInitialData();
                loaddata();
            }
        }

        private void LoadInitialData()
        {
            //DrpOraganizations
            DrpOraganizations.DataSource = RHP.Utility.Generic.GetAll<Oraganization>();
            DrpOraganizations.DataTextField = "OraganizationName";
            DrpOraganizations.DataValueField = "OraganizationId";
            DrpOraganizations.DataBind();
            DrpOraganizations.Items.Insert(0, new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));

            //DrpFraternity
            DrpFraternity.DataSource = RHP.Utility.Generic.GetAll<Fraternity>();
            DrpFraternity.DataTextField = "FraternityName";
            DrpFraternity.DataValueField = "FraternityId";
            DrpFraternity.DataBind();
            DrpFraternity.Items.Insert(0, new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));

            //DrpSoroity
            DrpSoroity.DataSource = RHP.Utility.Generic.GetAll<Soroity>();
            DrpSoroity.DataTextField = "SoroityName";
            DrpSoroity.DataValueField = "SoroityId";
            DrpSoroity.DataBind();
            DrpSoroity.Items.Insert(0, new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));

            //DrpGreekOrganizations
            DrpGreekOrganizations.DataSource = RHP.Utility.Generic.GetAll<GreakOrganization>();
            DrpGreekOrganizations.DataTextField = "GreakOrganizationName";
            DrpGreekOrganizations.DataValueField = "GreakOrganizationId";
            DrpGreekOrganizations.DataBind();
            DrpGreekOrganizations.Items.Insert(0, new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));


           // DrpGreekHonorSocities
            DrpGreekHonorSocities.DataSource = RHP.Utility.Generic.GetAll<GreekHonorSocities>();
            DrpGreekHonorSocities.DataTextField = "GreekHonorSocitiesName";
            DrpGreekHonorSocities.DataValueField = "GreekHonorSocitiesId";
            DrpGreekHonorSocities.DataBind();
            DrpGreekHonorSocities.Items.Insert(0, new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));

        }

        public void loaddata()
        {
            // school data

            spotlight = Spotlight.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

            if (spotlight != null)
            {
                Awards.Text = string.IsNullOrEmpty(spotlight.Awards) ? string.Empty : spotlight.Awards;
                Achievements.Text = string.IsNullOrEmpty(spotlight.Achievements) ? string.Empty : spotlight.Achievements;
                CurentGPA.Text = string.IsNullOrEmpty(spotlight.CurentGPA) ? string.Empty : spotlight.CurentGPA;
                Involvments.Text = string.IsNullOrEmpty(spotlight.Involvments) ? string.Empty : spotlight.Involvments;
    
                if (spotlight.OraganizationId.HasValue)
                {
                    for (int i = 0; i < DrpOraganizations.Items.Count; i++)
                    {
                        if (DrpOraganizations.Items[i].Value.ToString().ToLower() == spotlight.OraganizationId.ToString().ToLower())
                        {
                            DrpOraganizations.ClearSelection();
                            DrpOraganizations.Items[i].Selected = true;
                        }
                    }
                }

                if (spotlight.FraternityId.HasValue)
                {
                    for (int i = 0; i < DrpFraternity.Items.Count; i++)
                    {
                        if (DrpFraternity.Items[i].Value.ToString().ToLower() == spotlight.OraganizationId.ToString().ToLower())
                        {
                            DrpFraternity.ClearSelection();
                            DrpFraternity.Items[i].Selected = true;
                        }
                    }
                }

                if (spotlight.SoroityId.HasValue)
                {
                    for (int i = 0; i < DrpSoroity.Items.Count; i++)
                    {
                        if (DrpSoroity.Items[i].Value.ToString().ToLower() == spotlight.SoroityId.ToString().ToLower())
                        {
                            DrpSoroity.ClearSelection();
                            DrpSoroity.Items[i].Selected = true;
                        }
                    }
                }

                if (spotlight.GreakOrganizationId.HasValue)
                {
                    for (int i = 0; i < DrpGreekOrganizations.Items.Count; i++)
                    {
                        if (DrpGreekOrganizations.Items[i].Value.ToString().ToLower() == spotlight.GreakOrganizationId.ToString().ToLower())
                        {
                            DrpGreekOrganizations.ClearSelection();
                            DrpGreekOrganizations.Items[i].Selected = true;
                        }
                    }
                }

                if (spotlight.GreekHonorSocitiesId.HasValue)
                {
                    for (int i = 0; i < DrpGreekHonorSocities.Items.Count; i++)
                    {
                        if (DrpGreekHonorSocities.Items[i].Value.ToString().ToLower() == spotlight.GreekHonorSocitiesId.ToString().ToLower())
                        {
                            DrpGreekHonorSocities.ClearSelection();
                            DrpGreekHonorSocities.Items[i].Selected = true;
                        }
                    }
                }
            }

        }

        protected void SaveStudent_Spotlight_Click(object sender, EventArgs e)
        {
            spotlight.Awards = string.IsNullOrEmpty(Awards.Text) ? string.Empty : Awards.Text;
            spotlight.Achievements = string.IsNullOrEmpty(Achievements.Text) ? string.Empty : Achievements.Text;
            spotlight.CurentGPA = string.IsNullOrEmpty(CurentGPA.Text) ? string.Empty : CurentGPA.Text;
            spotlight.Involvments = string.IsNullOrEmpty(Involvments.Text) ? string.Empty : Involvments.Text;
           
            spotlight.IsDeleted = false;
            spotlight.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            spotlight.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            spotlight.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

            if (DrpOraganizations.SelectedItem.Value.Trim() == "-1")
            {
                spotlight.OraganizationId = null;
            }
            else
            {
                spotlight.OraganizationId = int.Parse(DrpOraganizations.SelectedItem.Value.Trim());
            }

            if (DrpSoroity.SelectedItem.Value.Trim() == "-1")
            {
                spotlight.SoroityId = null;
            }
            else
            {
                spotlight.SoroityId = int.Parse(DrpSoroity.SelectedItem.Value.Trim());
            }

            if (DrpFraternity.SelectedItem.Value.Trim() == "-1")
            {
                spotlight.FraternityId = null;
            }
            else
            {
                spotlight.FraternityId = int.Parse(DrpFraternity.SelectedItem.Value.Trim());
            }

            if (DrpGreekOrganizations.SelectedItem.Value.Trim() == "-1")
            {
                spotlight.GreakOrganizationId = null;
            }
            else
            {
                spotlight.GreakOrganizationId = int.Parse(DrpGreekOrganizations.SelectedItem.Value.Trim());
            }

            if (DrpGreekHonorSocities.SelectedItem.Value.Trim() == "-1")
            {
                spotlight.GreekHonorSocitiesId = null;
            }
            else
            {
                spotlight.GreekHonorSocitiesId = int.Parse(DrpGreekHonorSocities.SelectedItem.Value.Trim());
            }

            if (spotlight.Save())
            {

                lblError.Text = Messages.Save_Success;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Student/Student_Profile.aspx';}", true);

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Unsuccess + "'); }", true);
            }
        }

    }
}