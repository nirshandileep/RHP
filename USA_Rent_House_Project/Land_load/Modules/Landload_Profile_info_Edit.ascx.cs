using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using RHP.Common;
using RHP.SessionManager;
using RHP.LandlordManagement;

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class Landload_Profile_info_Edit : System.Web.UI.UserControl
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

        Landlord landload = new Landlord();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadInitialData();
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    LoadUserData();
                }
            }
        }

        private void LoadInitialData()
        {
            //Set Gender
            DrpGender.Items.AddRange(Constants.STUDENT_SEX_LIST);

        }

        public void LoadUserData()
        {
            // user data
            Name.Text = string.IsNullOrEmpty(user.Name) ? string.Empty : user.Name;
            Email.Text = string.IsNullOrEmpty(user.Email) ? string.Empty : user.Email;
            Address.Text = string.IsNullOrEmpty(user.StreetAddress) ? string.Empty : user.StreetAddress;
            City.Text = string.IsNullOrEmpty(user.City) ? string.Empty : user.City;
            Zip.Text = string.IsNullOrEmpty(user.Zip) ? string.Empty : user.Zip; 
            Mobile.Text = string.IsNullOrEmpty(user.BestContactNumber) ? string.Empty : user.BestContactNumber; 
            Question.Text = string.IsNullOrEmpty(user.Question) ? string.Empty : user.Question;

            if (string.IsNullOrEmpty(user.State))
            {
                for (int i = 0; i < Drpstate.Items.Count; i++)
                {
                    if (Drpstate.Items[i].Value.ToString().ToLower() == user.State.ToLower())
                    {
                        Drpstate.Items[i].Selected = true;
                    }
                }
            }

            if (string.IsNullOrEmpty(user.Gender))
            {
                for (int i = 0; i < DrpGender.Items.Count; i++)
                {
                    if (DrpGender.Items[i].Value.ToString().ToLower() == user.Gender.ToLower())
                    {
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
                        user.Name = Name.Text.Trim();
                        user.StreetAddress = Address.Text.Trim();
                        user.City = City.Text.Trim();
                        user.State = Drpstate.SelectedItem.Value.ToString();
                        user.Zip = Zip.Text.Trim();
                        user.BestContactNumber = Mobile.Text.Trim();
                        user.Gender = DrpGender.SelectedItem.Value.ToString();
                        user.UpdatedBy = user.UserId.HasValue ? user.UserId.Value : Guid.NewGuid();

                        if (user.Save())
                        {
                            landload.LandlordId = user.UserId.HasValue ? user.UserId.Value : Guid.NewGuid();

                            if (landload.Save())
                            {
                                lblError.Text = Messages.Save_Success;
                            }
                        }

                    }
                    else
                    {

                    }
                }
                catch (Exception ex)
                {
                    throw ex;//new Exception("student Profile info : " + ex.ToString());
                }
            }
            else
            {

            }
        }
    }
}