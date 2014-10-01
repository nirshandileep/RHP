using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;
using RHP.StudentManagement;
using System.Web.Security;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Student_Profile_info_Edit : System.Web.UI.UserControl
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
                    //_user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                }
                else
                {
                   
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
            if (!IsPostBack)
            {
                LoadInitialData();
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    LoadUserData();
                    if (user.IsFBUser == true)
                    {
                        HyperLinkChangePassword.Visible = false;
                        HyperLinkChangeQuestion.Visible = false;
                    }
                    else
                    {
                        HyperLinkChangePassword.Visible = true;
                        HyperLinkChangeQuestion.Visible = true;
                    }
                }
            }
        }

        private void LoadInitialData()
        {
            //Set Gender
            DrpGender.Items.AddRange(Constants.STUDENT_SEX_LIST);

            //Drpstate
            Drpstate.DataSource = RHP.Utility.Generic.GetAll<State>();
            Drpstate.DataTextField = "StateName";
            Drpstate.DataValueField = "StateId";
            Drpstate.DataBind();
            Drpstate.Items.Insert(0, new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));

        }

        public void LoadUserData()
        {
            // user data
            user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

           // user.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
           // user.AspnetUserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            FirstName.Text = string.IsNullOrEmpty(user.FirstName) ? string.Empty : user.FirstName;
            MiddleName.Text = string.IsNullOrEmpty(user.MiddleName) ? string.Empty : user.MiddleName;
            LastName.Text = string.IsNullOrEmpty(user.LastName) ? string.Empty : user.LastName;
            Email.Text = string.IsNullOrEmpty(Membership.GetUser().Email.ToString()) ? string.Empty : Membership.GetUser().Email.ToString();
            Address.Text = string.IsNullOrEmpty(user.StreetAddress) ? string.Empty : user.StreetAddress;
            City.Text = string.IsNullOrEmpty(user.City) ? string.Empty : user.City;
            Zip.Text = string.IsNullOrEmpty(user.Zip) ? string.Empty : user.Zip;
            
            //if (user.DateOfBirth.HasValue)
            //{
            //    DateTime DOB_ = user.DateOfBirth.Value;

            //}
            DOB.Text = string.IsNullOrEmpty(user.DateOfBirth.ToString()) ? string.Empty : user.DateOfBirth.Value.ToShortDateString();

            MobileArea.Text = string.IsNullOrEmpty(user.BestContactNumber) ? string.Empty : user.BestContactNumber.Substring(0, 3);
            Mobile1.Text = string.IsNullOrEmpty(user.BestContactNumber) ? string.Empty : user.BestContactNumber.Substring(3, 3);
            Mobile2.Text = string.IsNullOrEmpty(user.BestContactNumber) ? string.Empty : user.BestContactNumber.Substring(6, 4);
          

           // Mobile.Text = string.IsNullOrEmpty(user.BestContactNumber) ? string.Empty : user.BestContactNumber;
           
           // DriversLicense.Text = string.IsNullOrEmpty(user.DriversLicenseNumber) ? string.Empty : user.DriversLicenseNumber;
           

            if (user.StateId.HasValue)
            {
                for (int i = 0; i < Drpstate.Items.Count; i++)
                {
                    if (Drpstate.Items[i].Value.ToString().ToLower() == user.StateId.ToString().ToLower())
                    {
                        Drpstate.ClearSelection();
                        Drpstate.Items[i].Selected = true;
                    }
                }
            }

            if (!string.IsNullOrEmpty(user.Gender))
            {
                for (int i = 0; i < DrpGender.Items.Count; i++)
                {
                    if (DrpGender.Items[i].Value.ToString().ToLower() == user.Gender.ToLower())
                    {
                        DrpGender.ClearSelection();
                        DrpGender.Items[i].Selected = true;
                    }
                }

            }


            
        }

        protected void EditUserButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == true)
            {
                try
                {

                    if (HttpContext.Current.User.Identity.IsAuthenticated)
                    {
                        aspnet_Roles aspnet_Roles_ = new aspnet_Roles();

                        aspnet_Roles_ = aspnet_Roles.Select("student");

                        user.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                        user.AspnetUserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                        user.FirstName = FirstName.Text.Trim();
                        user.MiddleName = MiddleName.Text.Trim();
                        user.DateOfBirth = DateTime.Parse(DOB.Text.Trim());
                        user.LastName = LastName.Text.Trim();
                        user.StreetAddress = Address.Text.Trim();
                        user.City = City.Text.Trim();
                        user.RoleId = aspnet_Roles_.RoleId;
                        user.PersonalEmail = Email.Text.Trim();

                        if (Drpstate.SelectedItem.Value.Trim() == "-1")
                        {
                            user.StateId = null;
                        }
                        else
                        {
                            user.StateId = int.Parse(Drpstate.SelectedItem.Value.Trim());
                        }
                        
                        user.Zip = Zip.Text.Trim();
                        user.BestContactNumber = MobileArea.Text.Trim() + Mobile1.Text.Trim() + Mobile2.Text.Trim();
                       // user.DriversLicenseNumber = DriversLicense.Text.Trim();
                        user.Gender = DrpGender.SelectedItem.Value.ToString();
                        user.UpdatedBy = user.UserId.HasValue ? user.UserId.Value : Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                        user.CreatedBy = user.UserId.HasValue ? user.UserId.Value : Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

                        if (user.Save())
                        {
                            Session[Constants.SESSION_LOGGED_USER] = user;
                            lblError.Text = Messages.Save_Success;
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Student/Student_Profile.aspx';}", true);

                            
                            
                        }
                        else
                        {
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Unsuccess + "'); }", true);
                        }

                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Unsuccess + "'); }", true);
                    }
                }
                catch (Exception ex)
                { 
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Unsuccess + "'); }", true);
                    throw ex;//new Exception("student Profile info : " + ex.ToString());
                }
            }
            else
            {

            }
        }

    }
}