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

        RHP.StudentManagement.Student _student;

        public RHP.StudentManagement.Student student
        {
            get
            {
                _student = SessionManager.GetSession<RHP.StudentManagement.Student>(Constants.SESSION_LOGGED_STUDENT);
                if (_student == null)
                {
                    _student = new RHP.StudentManagement.Student();
                }
                Session[Constants.SESSION_LOGGED_STUDENT] = _student;
                return _student;
            }
            set
            {
                _student = value;
                Session[Constants.SESSION_LOGGED_STUDENT] = _student;
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

            //Set Schools
            if (DrpSchoolName.Items.Count == 0)
            {
                DrpSchoolName.DataSource = School.SelectAllList();
                DrpSchoolName.DataTextField = "Name";
                DrpSchoolName.DataValueField = "SchoolId";
                DrpSchoolName.DataBind();
            }

            //Load Years
            DRPYear.Items.Add(new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));
            for (int i = Constants.STUDENT_PROFILE_STARTING_YEAR; i <= Constants.STUDENT_PROFILE_NUMBER_OF_YEARS + Constants.STUDENT_PROFILE_STARTING_YEAR; i++)
            {
                DRPYear.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }

            Status.Items.AddRange(Constants.STUDENT_STATUS_LIST);
        }

        public void LoadUserData()
        {
            // user data
            user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

            user.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

            Name.Text = string.IsNullOrEmpty(user.Name) ? string.Empty : user.Name;
            Email.Text = string.IsNullOrEmpty(Membership.GetUser().Email.ToString()) ? string.Empty : Membership.GetUser().Email.ToString();
            Address.Text = string.IsNullOrEmpty(user.StreetAddress) ? string.Empty : user.StreetAddress;
            City.Text = string.IsNullOrEmpty(user.City) ? string.Empty : user.City;
            Zip.Text = string.IsNullOrEmpty(user.Zip) ? string.Empty : user.Zip;
            Mobile.Text = string.IsNullOrEmpty(user.BestContactNumber) ? string.Empty : user.BestContactNumber;
           
            DriversLicense.Text = string.IsNullOrEmpty(user.DriversLicenseNumber) ? string.Empty : user.DriversLicenseNumber;
           

            if (!string.IsNullOrEmpty(user.State))
            {
                for (int i = 0; i < Drpstate.Items.Count; i++)
                {
                    if (Drpstate.Items[i].Value.ToString().ToLower() == user.State.ToLower())
                    {
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
                        DrpGender.Items[i].Selected = true;
                    }
                }

            }


            // school data

            student = RHP.StudentManagement.Student.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

            if (student != null)
            {
                if (!string.IsNullOrEmpty(student.School.SchoolId.ToString()))
                {
                    for (int i = 0; i < DrpSchoolName.Items.Count; i++)
                    {
                        if (DrpSchoolName.Items[i].Value.ToString().ToLower() == student.School.SchoolId.ToString())
                        {
                            DrpSchoolName.Items[i].Selected = true;
                        }
                    }
                }
                if (!string.IsNullOrEmpty(student.Year.ToString()))
                {
                    for (int i = 0; i < DRPYear.Items.Count; i++)
                    {
                        if (DRPYear.Items[i].Value.ToString().ToLower() == student.Year.ToString())
                        {
                            DRPYear.Items[i].Selected = true;
                        }
                    }
                }

                if (!string.IsNullOrEmpty(user.Status))
                {
                    for (int i = 0; i < Status.Items.Count; i++)
                    {
                        if (Status.Items[i].Value.ToString().ToLower() == user.Status.ToLower())
                        {
                            Status.Items[i].Selected = true;
                        }
                    }
                }

                LandLoadName.Text = string.IsNullOrEmpty(student.LandloadName) ? string.Empty : student.LandloadName;
                LandLoadPlace.Text = string.IsNullOrEmpty(student.LandloadPlace) ? string.Empty : student.LandloadPlace;
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
                        user.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                        user.Name = Name.Text.Trim();
                        user.StreetAddress = Address.Text.Trim();
                        user.City = City.Text.Trim();
                        user.State = Drpstate.SelectedItem.Value.ToString();
                        user.Zip = Zip.Text.Trim();
                        user.BestContactNumber = Mobile.Text.Trim();
                        user.DriversLicenseNumber = DriversLicense.Text.Trim();
                        user.Gender = DrpGender.SelectedItem.Value.ToString();
                        user.UpdatedBy = user.UserId.HasValue ? user.UserId.Value : Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                        user.CreatedBy = user.UserId.HasValue ? user.UserId.Value : Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

                        if (user.Save())
                        {

                            string schoolId = DrpSchoolName.SelectedValue.ToString().Trim();

                            if (student.School == null)
                            {
                                student.School = new School();
                            }

                            student.StudentUser = user;

                            student.School.SchoolId = new Guid(schoolId);
                            student.School.Year = int.Parse(DRPYear.SelectedItem.Value.ToString());
                            
                            student.IsDeleted = false;
                            student.LandloadName = LandLoadName.Text.Trim();
                            student.Status = Status.SelectedItem.Value.ToString();
                            student.LandloadPlace = LandLoadPlace.Text.Trim();
                            student.CreatedBy = user.UserId.HasValue ? user.UserId.Value : Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                            student.UpdatedBy = user.UserId.HasValue ? user.UserId.Value : Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

                            if (student.Save())
                            {
                                Session[Constants.SESSION_LOGGED_USER] = user;
                                lblError.Text = Messages.Save_Success;
                                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Student/Student_Profile.aspx';}", true);

                            }

                            
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