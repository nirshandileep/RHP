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
using RHP.LandlordManagement;


namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Current_House_Landload_info : System.Web.UI.UserControl
    {
        User user = new User();
        public Landlord landload = new Landlord();

        public Guid? LandlordId
        {
            get
            {
                if (string.IsNullOrEmpty(hdnLandlordId.Value.Trim()))
                {
                    return null;
                }
                else
                {
                    return Guid.Parse(hdnLandlordId.Value.Trim());
                }
            }
            set
            {
                if (value.HasValue)
                {
                    hdnLandlordId.Value = value.Value.ToString();
                }
                else
                {
                    hdnLandlordId.Value = string.Empty;
                }

            }
        }
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateLandloadButton_Click(object sender, EventArgs e)
        {
            Save();

            //this.Visible = false;
            //show step 2
            //((UserControl)this.Parent.FindControl("Current_House_Rental_Address_infoID")).Visible = true;


        }

        public bool Save()
        {
            bool result = true;


            if (LandlordId == null)
            {
                user.UserId = Guid.NewGuid();
                user.PersonalEmail = Email.Text.Trim();
                user.FirstName = FirstName.Text.Trim();
                user.MiddleName = MiddleName.Text.Trim();
                user.LastName = LastName.Text.Trim();
                user.BestContactNumber = Mobile.Text.Trim();
                user.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                user.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                user.IsPartialUser = true;

                if (user.Save())
                {
                    landload.LandlordId = user.UserId.HasValue ? user.UserId.Value : user.UserId.Value;
                    LandlordId = landload.LandlordId;//setting value of property
                    landload.LandlordName = user.FirstName + " " + user.MiddleName + " " + user.LastName;
                    landload.user = user;
                    landload.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    landload.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    result = landload.Save();
                }

              //  ViewState["LandlordID"];

                 LandlordId = user.UserId;
            }
            else
            {
                // Landload already registerd
            }
            return result;
        }

        protected void ButtonVerify_Click(object sender, EventArgs e)
        {
          
            if (Email.Text.Trim() != "")
            {
               // Session["HiddenFieldLandloadID"] = null;

                User _user = User.SelectUserByEmail("Email", Email.Text.Trim().ToLower(), "RoleName", "landlord");
              
                if (_user != null)
                {


                    ViewState["LandlordID"] = _user.UserId.Value.ToString();
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