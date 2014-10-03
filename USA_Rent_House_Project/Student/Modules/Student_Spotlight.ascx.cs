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
                loaddata();
            }
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
                Oraganizations.Text = string.IsNullOrEmpty(spotlight.Oraganizations) ? string.Empty : spotlight.Oraganizations;
                Involvments.Text = string.IsNullOrEmpty(spotlight.Involvments) ? string.Empty : spotlight.Involvments;
                Fraternity.Text = string.IsNullOrEmpty(spotlight.Fraternity) ? string.Empty : spotlight.Fraternity;
                Soroity.Text = string.IsNullOrEmpty(spotlight.Soroity) ? string.Empty : spotlight.Soroity;
            }
        }
        protected void SaveStudent_Spotlight_Click(object sender, EventArgs e)
        {
            spotlight.Awards = string.IsNullOrEmpty(Awards.Text) ? string.Empty : Awards.Text;
            spotlight.Achievements = string.IsNullOrEmpty(Achievements.Text) ? string.Empty : Achievements.Text;
            spotlight.CurentGPA = string.IsNullOrEmpty(CurentGPA.Text) ? string.Empty : CurentGPA.Text;
            spotlight.Oraganizations = string.IsNullOrEmpty(Oraganizations.Text) ? string.Empty : Oraganizations.Text;
            spotlight.Involvments = string.IsNullOrEmpty(Involvments.Text) ? string.Empty : Involvments.Text;
            spotlight.Fraternity = string.IsNullOrEmpty(Fraternity.Text) ? string.Empty : Fraternity.Text;
            spotlight.Soroity = string.IsNullOrEmpty(Soroity.Text) ? string.Empty : Soroity.Text;

            spotlight.IsDeleted = false;
            spotlight.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            spotlight.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            spotlight.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

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