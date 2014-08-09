using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using RHP.UserManagement;
using RHP.Utility;
using RHP.StudentManagement;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Student_Profile_info_Add : System.Web.UI.UserControl
    {
        User user = new User();

        RHP.StudentManagement.Student student = new RHP.StudentManagement.Student();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
             
                if (user.UserId != null)
                {
                    loadFBData();
                }

            }
        }

        public void loadFBData()
        {
            Name.Text = user.Name;

            setEmail.Visible = false;
            setUserName.Visible = false;
            setpwd.Visible = false;
            confirmpwd.Visible = false;
            setQuestiontitle.Visible = false;
            setQuestion.Visible = false;
            setAnswer.Visible = false;

            for (int i = 0; i < DrpGender.Items.Count; i++)
            {
                if (DrpGender.Items[i].Value == user.Gender)
                {
                    DrpGender.Items[0].Selected = true;
                }
            }
        }

        protected void CreateUserButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == true)
            {
                try
                {
                    bool boolMembershipUserCreated = false;

                    user.Name = Name.Text.Trim();
                    user.StreetAddress = Address.Text.Trim();
                    user.City = City.Text.Trim();
                    user.State = Drpstate.SelectedItem.Value.ToString();
                    user.Zip = Zip.Text.Trim();
                    user.BestContactNumber = Mobile.Text.Trim();
                    user.DriversLicenseNumber = DriversLicense.Text.Trim();
                    user.Gender = DrpGender.SelectedItem.Value.ToString();
                    user.Status = Status.SelectedItem.Value.ToString();


                    student.School.SchoolId = new Guid(DrpSchoolName.SelectedItem.Value.ToString());
                    student.School.Name = DrpSchoolName.SelectedItem.Text.ToString();
                    student.School.Year = DRPYear.SelectedItem.Value.ToString();
                    student.IsDeleted = false;
                    student.LandloadName = LandLoadName.Text.Trim();
                    student.LandloadPlace = LandLoadPlace.Text.Trim();
                    student.CreatedBy = user.UserId;


                        if (user.UserId != null)
                        {
                          // user created by facebook
                            boolMembershipUserCreated = true;
                        }
                        else
                        {
                            user.Email = Email.Text.Trim();
                            user.Password = Password.Text.Trim();
                            user.UserName = UserName.Text.Trim();
                            user.Question = Question.Text.Trim();
                            user.Answer = Answer.Text.Trim();

                            object objCreateMembershipUser = new object();

                          
                            objCreateMembershipUser = user.AddMembershipUser(user.UserName, user.Password, user.Email, user.Question, user.Answer, true, "student");

                            bool.TryParse(objCreateMembershipUser.ToString(), out boolMembershipUserCreated);

                            if (boolMembershipUserCreated)
                            {
                                MembershipUser mUser;
                                mUser = Membership.GetUser(UserName.Text.Trim());
                                user.UserId = new Guid(mUser.ProviderUserKey.ToString());
                            }
                            else
                            {
                                // error
                            }
                        }

                        if (boolMembershipUserCreated)
                        {
                            student.StudentUser.UserId = user.UserId;
                            if (user.Save())
                            {
                                student.Save();

                                // success
                            }
                        }

                   
                }
                catch (Exception ex)
                {
                    throw new Exception("student Profile info : " + ex.ToString());
                }
            }
            else
            {

            }
        }
    }
}