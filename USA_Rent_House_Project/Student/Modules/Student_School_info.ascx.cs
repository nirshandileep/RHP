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

        public User user = new User();
        //{
        //    get
        //    {
        //        _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
        //        if (_user == null)
        //        {
        //            _user = new User();  //_user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
        //        }
        //        else
        //        {
                    
        //        }
        //        Session[Constants.SESSION_LOGGED_USER] = _user;
        //        return _user;
        //    }
        //    set
        //    {
        //        _user = value;
        //        Session[Constants.SESSION_LOGGED_USER] = _user;
        //    }
        //}

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
            DrpSchoolName.Items.Clear();
            if (DrpSchoolName.Items.Count == 0)
            {
                DrpSchoolName.DataSource = School.SelectAllList();
                DrpSchoolName.TextField = "Name";
                DrpSchoolName.ValueField = "SchoolId";
                DrpSchoolName.DataBind();
            }

            //DRPCurentMajor
            DRPCurentMajor.Items.Clear();
            DRPCurentMajor.DataSource = RHP.Utility.Generic.GetAll<Major>();
            DRPCurentMajor.DataTextField = "MajorName";
            DRPCurentMajor.DataValueField = "MajorId";
            DRPCurentMajor.DataBind();
            DRPCurentMajor.Items.Insert(0, new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));



           // Load Years
            DRPYear.Items.Clear();
            DRPYear.Items.Add(new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));
            for (int i = Constants.STUDENT_PROFILE_STARTING_YEAR; i <= Constants.STUDENT_PROFILE_NUMBER_OF_YEARS + Constants.STUDENT_PROFILE_STARTING_YEAR; i++)
            {
                DRPYear.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }

            DRPstartMonth.Items.Clear();
            DRPstartMonth.Items.Add(new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));
            for (int i = Constants.STUDENT_PROFILE_STARTING_MONTH; i <= Constants.STUDENT_PROFILE_NUMBER_OF_MONTHS + Constants.STUDENT_PROFILE_STARTING_MONTH; i++)
            {
                DRPstartMonth.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }

            DRPstartYear.Items.Clear();
            DRPstartYear.Items.Add(new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));
            for (int i = Constants.STUDENT_PROFILE_STARTING_YEAR; i <= Constants.STUDENT_PROFILE_NUMBER_OF_YEARS + Constants.STUDENT_PROFILE_STARTING_YEAR; i++)
            {
                DRPstartYear.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }

            Status.Items.Clear();
            DRPpreviousschoolinfo.Items.Clear();
           

            Status.Items.AddRange(Constants.STUDENT_STATUS_LIST);
            DRPpreviousschoolinfo.Items.AddRange(Constants.PREVIOUS_SCHOOL_INFO_LIST);
           // DRPCurentMajor.Items.AddRange(Constants.CURENT_MAJOR_LIST);
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
                                DrpSchoolName.Value = student.School.SchoolId.ToString();
                                //DrpSchoolName.Items[i].Selected = true;
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

         
                if (!string.IsNullOrEmpty(student.PreviousSchoolInfo))
                {
                    for (int i = 0; i < DRPpreviousschoolinfo.Items.Count; i++)
                    {
                        if (DRPpreviousschoolinfo.Items[i].Value.ToString().ToLower() == student.PreviousSchoolInfo.ToLower())
                        {
                            DRPpreviousschoolinfo.ClearSelection();
                            DRPpreviousschoolinfo.Items[i].Selected = true;
                        }
                    }
                }


                if (student.MajorId.HasValue)
                {
                    for (int i = 0; i < DRPCurentMajor.Items.Count; i++)
                    {
                        if (DRPCurentMajor.Items[i].Value.ToString().ToLower() == student.MajorId.ToString().ToLower())
                        {
                            DRPCurentMajor.ClearSelection();
                            DRPCurentMajor.Items[i].Selected = true;
                        }
                    }
                }


                if (!string.IsNullOrEmpty(student.StartMonth.ToString()))
                {
                    for (int i = 0; i < DRPstartMonth.Items.Count; i++)
                    {
                        if (DRPstartMonth.Items[i].Value.ToString().ToLower() == student.StartMonth.ToString())
                        {
                            DRPstartMonth.ClearSelection();
                            DRPstartMonth.Items[i].Selected = true;
                        }
                    }
                }


                if (!string.IsNullOrEmpty(student.StartYear.ToString()))
                {
                    for (int i = 0; i < DRPstartYear.Items.Count; i++)
                    {
                        if (DRPstartYear.Items[i].Value.ToString().ToLower() == student.StartYear.ToString())
                        {
                            DRPstartYear.ClearSelection();
                            DRPstartYear.Items[i].Selected = true;
                        }
                    }
                }

               
                if (DRPpreviousschoolinfo.SelectedItem.Value == "Transfer student")
                {
                    previousschoolID.Visible = true;
                    previousschool.Text = string.IsNullOrEmpty(student.PreviousSchool) ? string.Empty : student.PreviousSchool;
                }
                else
                {
                    previousschoolID.Visible = false;
                }

                
               // startMonth.Text = string.IsNullOrEmpty(student.StartMonth.ToString()) ? string.Empty : student.StartMonth.ToString();
               // startYear.Text = string.IsNullOrEmpty(student.StartYear.ToString()) ? string.Empty : student.StartYear.ToString();
              //  LandLoadPlace.Text = string.IsNullOrEmpty(student.LandloadPlace) ? string.Empty : student.LandloadPlace;
            }
        }

        protected void SaveSchoolButton_Click(object sender, EventArgs e)
        {
            string schoolId = DrpSchoolName.Value.ToString().Trim();

            if (student.School == null)
            {
                student.School = new School();
               
            }
            else
            {
               // student.School.SchoolId = Guid.Parse(schoolId);
            }

            student.School.SchoolId = new Guid(schoolId);

            //if(user.UserId == null)
            //{
                user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
           // }

            student.StudentUser = user;

            if (DRPCurentMajor.SelectedItem.Value.Trim() == "-1")
            {
                student.MajorId = null;
            }
            else
            {
                student.MajorId = int.Parse(DRPCurentMajor.SelectedItem.Value.ToString());

            }

            student.School.Year = int.Parse(DRPYear.SelectedItem.Value.ToString());
            student.StartMonth = int.Parse(DRPstartMonth.SelectedItem.Value.ToString());//int.Parse(startMonth.Text.ToString());
            student.StartYear = int.Parse(DRPstartYear.SelectedItem.Value.ToString());//int.Parse(startYear.Text.ToString());
           
            student.PreviousSchoolInfo = DRPpreviousschoolinfo.SelectedItem.Value.ToString();
            student.PreviousSchool = string.IsNullOrEmpty(previousschool.Text) ? string.Empty : previousschool.Text;

            student.IsDeleted = false;
           
            student.Status = Status.SelectedItem.Value.ToString();
           
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

        protected void DRPpreviousschoolinfo_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DRPpreviousschoolinfo.SelectedItem.Value == "Transfer student")
            {
                previousschoolID.Visible = true;
            }
            else
            {
                previousschoolID.Visible = false;
            }
        }
    }
}