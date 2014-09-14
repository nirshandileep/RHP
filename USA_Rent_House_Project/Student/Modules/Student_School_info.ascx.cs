using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.Common;
using RHP.StudentManagement;
using RHP.UserManagement;
using RHP.SessionManager;
using System.Web.Security;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Student_School_info : System.Web.UI.UserControl
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
                loaddata();
            }
        }

        private void LoadInitialData()
        {
            //Set Schools

            if (DrpSchoolName.Items.Count == 0)
            {
                DrpSchoolName.DataSource = School.SelectAllList();
                DrpSchoolName.DataTextField = "Name";
                DrpSchoolName.DataValueField = "SchoolId";
                DrpSchoolName.DataBind();
            }

           // Load Years
            DRPYear.Items.Add(new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));
            for (int i = Constants.STUDENT_PROFILE_STARTING_YEAR; i <= Constants.STUDENT_PROFILE_NUMBER_OF_YEARS + Constants.STUDENT_PROFILE_STARTING_YEAR; i++)
            {
                DRPYear.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }

            Status.Items.AddRange(Constants.STUDENT_STATUS_LIST);
        }


        public void loaddata()
        {
            // school data

            student = RHP.StudentManagement.Student.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

            if (student != null)
            {
               // Session[Constants.SESSION_LOGGED_STUDENT] = student;
                if (student.School != null)
                {
                   
                    if (!string.IsNullOrEmpty(student.School.SchoolId.ToString()))
                    {
                        HiddenFieldSchoolId.Value = student.School.SchoolId.ToString();

                        for (int i = 0; i < DrpSchoolName.Items.Count; i++)
                        {
                            if (DrpSchoolName.Items[i].Value.ToString().ToLower() == student.School.SchoolId.ToString())
                            {
                                DrpSchoolName.ClearSelection();
                                DrpSchoolName.Items[i].Selected = true;
                            }
                        }
                    }
                }

                if (!string.IsNullOrEmpty(student.Year.ToString()))
                {
                    for (int i = 0; i < DRPYear.Items.Count; i++)
                    {
                        if (DRPYear.Items[i].Value.ToString().ToLower() == student.Year.ToString())
                        {
                            DRPYear.ClearSelection();
                            DRPYear.Items[i].Selected = true;
                        }
                    }
                }

                if (!string.IsNullOrEmpty(student.Status))
                {
                    for (int i = 0; i < Status.Items.Count; i++)
                    {
                        if (Status.Items[i].Value.ToString().ToLower() == student.Status.ToLower())
                        {
                            Status.ClearSelection();
                            Status.Items[i].Selected = true;
                        }
                    }
                }

              //  LandLoadName.Text = string.IsNullOrEmpty(student.LandloadName) ? string.Empty : student.LandloadName;
              //  LandLoadPlace.Text = string.IsNullOrEmpty(student.LandloadPlace) ? string.Empty : student.LandloadPlace;
            }
        }

        protected void SaveSchoolButton_Click(object sender, EventArgs e)
        {
            string schoolId = DrpSchoolName.SelectedValue.ToString().Trim();

            if (student.School == null)
            {
                student.School = new School();
               
            }
            else
            {
               // student.School.SchoolId = Guid.Parse(schoolId);
            }

            student.School.SchoolId = new Guid(schoolId);

            if(user.UserId == null)
            {
                user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
            }

            student.StudentUser = user;

            
            student.School.Year = int.Parse(DRPYear.SelectedItem.Value.ToString());

            student.IsDeleted = false;
           // student.LandloadName = LandLoadName.Text.Trim();
            student.Status = Status.SelectedItem.Value.ToString();
           // student.LandloadPlace = LandLoadPlace.Text.Trim();
            student.CreatedBy = user.UserId.HasValue ? user.UserId.Value : Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            student.UpdatedBy = user.UserId.HasValue ? user.UserId.Value : Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

            if (student.Save())
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