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
using RHP.StudentManagement;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Student_Public_Profile_info_View : System.Web.UI.UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

            if (AccessCode != string.Empty && AccessCode != null)
            {
                try
                {
                    loadUserdata(Guid.Parse(AccessCode));
                    loadSchooldata(Guid.Parse(AccessCode));
                    loadSpotlightdata(Guid.Parse(AccessCode));
                }
                catch (Exception ex)
                { }
            }

            
        }

        public void loadUserdata(Guid AccessCode)
        {
            User user;

            user = User.Select(AccessCode);

            // user data
            user = User.Select(AccessCode);

            Name.Text = (string.IsNullOrEmpty(user.FirstName) ? string.Empty : user.FirstName) + " " + (string.IsNullOrEmpty(user.MiddleName) ? string.Empty : user.MiddleName) + " " + (string.IsNullOrEmpty(user.LastName) ? string.Empty : user.LastName);
            DOB.Text = string.IsNullOrEmpty(user.DateOfBirth.ToString()) ? string.Empty : user.DateOfBirth.Value.ToShortDateString();
            if (!string.IsNullOrEmpty(user.Gender))
            {
                for (int i = 0; i < Constants.STUDENT_SEX_LIST.Length; i++)
                {
                    if (Constants.STUDENT_SEX_LIST[i].Value.ToLower() == user.Gender.ToString().ToLower())
                    {
                        Gender.Text = Constants.STUDENT_SEX_LIST[i].Text.ToLower();
                    }
                }

            }


            Email.Text = string.IsNullOrEmpty(user.PersonalEmail) ? string.Empty : user.PersonalEmail;
            Address.Text = (string.IsNullOrEmpty(user.StreetAddress) ? string.Empty : user.StreetAddress) + " " + (string.IsNullOrEmpty(user.Zip) ? string.Empty : user.Zip);
            City.Text = string.IsNullOrEmpty(user.City) ? string.Empty : user.City;
            Mobile.Text = string.IsNullOrEmpty(user.BestContactNumber) ? string.Empty : user.BestContactNumber;

            if (user.StateId.HasValue)
            {
                State state;
                state = Generic.Get<State>(user.StateId.Value);
                if (state != null)
                {
                    State.Text = state.StateName;
                }
            }
        }

        public void loadSchooldata(Guid AccessCode)
        {
            // school data
            RHP.StudentManagement.Student student;

            student = RHP.StudentManagement.Student.Select(AccessCode);

            if (student != null)
            {
                if (student.School != null)
                {
                   List<School> SchoolList;

                   SchoolList = School.SelectAllList();

                    if (!string.IsNullOrEmpty(student.School.SchoolId.ToString()))
                    {

                        for (int i = 0; i < SchoolList.Count; i++)
                        {
                            if (SchoolList[i].ToString().ToLower() == student.School.SchoolId.ToString())
                            {
                                SchoolName.Text = student.School.SchoolId.ToString();
                               
                            }
                        }
                    }
                }

                
                Year.Text = student.Year.ToString();
                
                if (!string.IsNullOrEmpty(student.Status))
                {
                    for (int i = 0; i < Constants.STUDENT_STATUS_LIST.Length; i++)
                    {
                        if (Constants.STUDENT_STATUS_LIST[i].Value.ToString().ToLower() == student.Status.ToLower())
                        {
                            Status.Text = Constants.STUDENT_STATUS_LIST[i].Text.ToString().ToLower();
                        }
                    }
                }


                if (!string.IsNullOrEmpty(student.PreviousSchoolInfo))
                {
                    for (int i = 0; i < Constants.PREVIOUS_SCHOOL_INFO_LIST.Length; i++)
                    {
                        if (Constants.PREVIOUS_SCHOOL_INFO_LIST[i].Value.ToString().ToLower() == student.PreviousSchoolInfo.ToLower())
                        {
                            previousschoolinfo.Text = Constants.PREVIOUS_SCHOOL_INFO_LIST[i].Text.ToString().ToLower();
                           
                        }
                    }

                    if (previousschoolinfo.Text == "transfer student")
                    {
                        previousschoolID.Visible = true;
                        previousschool.Text = string.IsNullOrEmpty(student.PreviousSchool) ? string.Empty : student.PreviousSchool;
                    }
                    else
                    {
                        previousschoolID.Visible = false;
                    }
                }

                if (!string.IsNullOrEmpty(student.CurentMajor))
                {
                    for (int i = 0; i < Constants.CURENT_MAJOR_LIST.Length; i++)
                    {
                        if (Constants.CURENT_MAJOR_LIST[i].Value.ToString().ToLower() == student.CurentMajor.ToLower())
                        {
                            CurentMajor.Text = Constants.CURENT_MAJOR_LIST[i].Text.ToString().ToLower(); 
                        }
                    }
                }

                startdate.Text = student.StartMonth.ToString() + " / " + student.StartYear.ToString();

            }
        }

        public void loadSpotlightdata(Guid AccessCode)
        {
            // school data
            Spotlight spotlight;
            spotlight = Spotlight.Select(AccessCode);

            if (spotlight != null)
            {
                Awards.Text = string.IsNullOrEmpty(spotlight.Awards) ? string.Empty : spotlight.Awards;
                Achievements.Text = string.IsNullOrEmpty(spotlight.Achievements) ? string.Empty : spotlight.Achievements;
                CurentGPA.Text = string.IsNullOrEmpty(spotlight.CurentGPA) ? string.Empty : spotlight.CurentGPA;
                Involvments.Text = string.IsNullOrEmpty(spotlight.Involvments) ? string.Empty : spotlight.Involvments;
               
                if (spotlight.OraganizationId.HasValue)
                {
                    Oraganization oraganization;
                    oraganization = Generic.Get<Oraganization>(spotlight.OraganizationId.Value);
                    if (oraganization != null)
                    {
                        txtOraganizations.Text = oraganization.OraganizationName;
                    }
                }

                if (spotlight.FraternityId.HasValue)
                {
                    Fraternity fraternity;
                    fraternity = Generic.Get<Fraternity>(spotlight.FraternityId.Value);
                    if (fraternity != null)
                    {
                        txtFraternity.Text = fraternity.FraternityName;
                    }
                }

                if (spotlight.SoroityId.HasValue)
                {
                    Soroity soroity;
                    soroity = Generic.Get<Soroity>(spotlight.SoroityId.Value);
                    if (soroity != null)
                    {
                        txtSoroity.Text = soroity.SoroityName;
                    }
                }

                if (spotlight.GreakOrganizationId.HasValue)
                {
                    GreakOrganization greakOrganization;
                    greakOrganization = Generic.Get<GreakOrganization>(spotlight.GreakOrganizationId.Value);
                    if (greakOrganization != null)
                    {
                        txyGreakOrganization.Text = greakOrganization.GreakOrganizationName;
                    }
                }

                if (spotlight.GreekHonorSocitiesId.HasValue)
                {
                    GreekHonorSocities greekHonorSocities;
                    greekHonorSocities = Generic.Get<GreekHonorSocities>(spotlight.GreekHonorSocitiesId.Value);
                    if (greekHonorSocities != null)
                    {
                        txtGreekHonorSocities.Text = greekHonorSocities.GreekHonorSocitiesName;
                    }
                }

            }
        }
    }
}