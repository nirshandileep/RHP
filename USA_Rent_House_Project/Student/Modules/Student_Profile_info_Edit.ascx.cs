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

        User user = new User();

        RHP.StudentManagement.Student student = new RHP.StudentManagement.Student();

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

            Name.Text = user.Name;
            Email.Text = user.Email;
            Address.Text = user.StreetAddress;
            City.Text = user.City;
            Zip.Text = user.Zip;
            Mobile.Text = user.BestContactNumber;
            DriversLicense.Text = user.DriversLicenseNumber;
            Question.Text = user.Question;

            for (int i = 0; i < Status.Items.Count; i++)
            {
                if (Status.Items[i].Value.ToString().ToLower() == user.Status.ToLower())
                {
                    Status.Items[i].Selected = true;
                }
            }

            for (int i = 0; i < Drpstate.Items.Count; i++)
            {
                if (Drpstate.Items[i].Value.ToString().ToLower() == user.State.ToLower())
                {
                    Drpstate.Items[i].Selected = true;
                }
            }

            for (int i = 0; i < DrpGender.Items.Count; i++)
            {
                if (DrpGender.Items[i].Value.ToString().ToLower() == user.Gender.ToLower())
                {
                    DrpGender.Items[i].Selected = true;
                }
            }

            // school data

            for (int i = 0; i < DrpSchoolName.Items.Count; i++)
            {
                if (DrpSchoolName.Items[i].Value.ToString().ToLower() ==  student.School.SchoolId.ToString())
                {
                    DrpSchoolName.Items[i].Selected = true;
                }
            }

            for (int i = 0; i < DRPYear.Items.Count; i++)
            {
                if (DRPYear.Items[i].Value.ToString().ToLower() == student.Year.ToString())
                {
                    DRPYear.Items[i].Selected = true;
                }
            }

            LandLoadName.Text = student.LandloadName;
            LandLoadPlace.Text = student.LandloadPlace;
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
                        user.DriversLicenseNumber = DriversLicense.Text.Trim();
                        user.Gender = DrpGender.SelectedItem.Value.ToString();
                        user.Status = Status.SelectedItem.Value.ToString();
                        user.UpdatedBy = user.UserId.HasValue ? user.UserId.Value : Guid.NewGuid();

                        string schoolId = DrpSchoolName.SelectedValue.ToString().Trim();

                        if (student.School == null)
                        {
                            student.School = new School();
                        }

                        student.School.SchoolId = new Guid(schoolId);
                        student.Year = int.Parse(DRPYear.SelectedItem.Value.ToString());
                        student.IsDeleted = false;
                        student.LandloadName = LandLoadName.Text.Trim();
                        student.LandloadPlace = LandLoadPlace.Text.Trim();
                        student.CreatedBy = user.UserId.HasValue ? user.UserId.Value : Guid.NewGuid();
                        student.UpdatedBy = user.UserId.HasValue ? user.UserId.Value : Guid.NewGuid();
                        if (user.Save())
                        {
                            if (student.Save())
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