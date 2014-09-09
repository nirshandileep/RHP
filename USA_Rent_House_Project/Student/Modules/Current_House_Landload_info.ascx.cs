using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;
using RHP.Utility;
using System.Web.Security;


namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Current_House_Landload_info : System.Web.UI.UserControl
    {

        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {
                    _user = new User();
                }
                Session[Constants.SESSION_LOGGED_USER] = _user;
                return _user;
            }
            set
            {
                _user = value;
                Session[Constants.SESSION_LOGGED_USER] = _user;
            }
        }

       

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateLandloadButton_Click(object sender, EventArgs e)
        {
            Save();

            this.Visible = false;
            //show step 2
            ((UserControl)this.Parent.FindControl("Current_House_Rental_Address_infoID")).Visible = true;


        }

        public void Save()
        {
            if (ViewState["HiddenFieldLandloadID"] == null)
            {
                _user.UserId = Guid.NewGuid();
                _user.Email = Email.Text.Trim();
                _user.FirstName = FirstName.Text.Trim();
                _user.MiddleName = MiddleName.Text.Trim();
                _user.LastName = LastName.Text.Trim();
                _user.BestContactNumber = Mobile.Text.Trim();
                _user.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                _user.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                _user.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
               
                _user.Save();
            }

        }

        protected void ButtonVerify_Click(object sender, EventArgs e)
        {
          
            if (Email.Text.Trim() != "")
            {
                ViewState["HiddenFieldLandloadID"] = null;

                User _user = User.SelectUserByEmail("Email", Email.Text.Trim().ToLower(), "RoleName", "landlord");
              
                if (_user != null)
                {


                  ViewState["HiddenFieldLandloadID"] = _user.UserId.Value.ToString();
                    Email.Text = _user.Email;
                    FirstName.Text = _user.FirstName;
                    MiddleName.Text = _user.MiddleName;
                    LastName.Text = _user.LastName;
                    Mobile.Text = _user.BestContactNumber;

                  
                }
                else
                {
                    FirstName.Enabled = true;
                    MiddleName.Enabled = true;
                    LastName.Enabled = true;
                    Mobile.Enabled = true;
                }
            }
            else
            {
                clear();

            }
        }

        public void clear()
        {
            Email.Text = "";
            FirstName.Text = "";
            MiddleName.Text = "";
            LastName.Text = "";
            Mobile.Text = "";
            FirstName.Enabled = false;
            MiddleName.Enabled = false;
            LastName.Enabled = false;
            Mobile.Enabled = false;
        }
    }
}