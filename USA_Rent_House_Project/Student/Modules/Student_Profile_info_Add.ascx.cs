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
using RHP.Common;
using RHP.SessionManager;

namespace USA_Rent_House_Project.Student.Modules
{
	public partial class Student_Profile_info_Add : System.Web.UI.UserControl
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

		RHP.StudentManagement.Student student = new RHP.StudentManagement.Student();

		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				LoadInitialData();

                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    Response.Redirect("~/Student/Student_Profile.aspx", false);
                }
                else
                {
                    LoadFBData();
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

		public void LoadFBData()
		{
			if (user.IsFBUser)
			{
                //if (!string.IsNullOrEmpty(user.Email))
                //{
                //    setEmail.Visible = false;
                //}
                //else { Email.Text = user.Email; }

				setUserName.Visible = false;
				setpwd.Visible = false;
				confirmpwd.Visible = false;
				setQuestiontitle.Visible = false;
				setQuestion.Visible = false;
				setAnswer.Visible = false;

                Email.Text = string.IsNullOrEmpty(user.Email) ? string.Empty : user.Email;
                Name.Text = string.IsNullOrEmpty(user.Name) ? string.Empty : user.Name;

                if(!string.IsNullOrEmpty(user.Gender))
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
		}

		protected void CreateUserButton_Click(object sender, EventArgs e)
		{
			if (Page.IsValid == true)
			{
				try
				{
					bool boolMembershipUserCreated = false;

                    user.Email = Email.Text.Trim();
					user.Name = Name.Text.Trim();
					user.StreetAddress = Address.Text.Trim();
					user.City = City.Text.Trim();
					user.State = Drpstate.SelectedItem.Value.ToString();
					user.Zip = Zip.Text.Trim();
					user.BestContactNumber = Mobile.Text.Trim();
					user.DriversLicenseNumber = DriversLicense.Text.Trim();
					user.Gender = DrpGender.SelectedItem.Value.ToString();
					user.Status = Status.SelectedItem.Value.ToString();

					string schoolId = DrpSchoolName.SelectedValue.ToString().Trim();
					if (student.School == null)
					{
						student.School = new School();
					}

					student.School.SchoolId = new Guid(schoolId);
                    student.School.Year = int.Parse(DRPYear.SelectedItem.Value.ToString());
					student.IsDeleted = false;
					student.LandloadName = LandLoadName.Text.Trim();
					student.LandloadPlace = LandLoadPlace.Text.Trim();
					student.CreatedBy = user.UserId.HasValue ? user.UserId.Value : Guid.NewGuid();

                    if (user.IsFBUser)
                    {
                        // facebook user
                        user.UserName = user.Email.Split('@')[0];
                    }
                    else
                    {
                        
                        user.Password = Password.Text.Trim();
                        user.UserName = UserName.Text.Trim();
                        user.Question = Question.Text.Trim();
                        user.Answer = Answer.Text.Trim();
                    }

                    object objCreateMembershipUser = new object();
                    objCreateMembershipUser = user.AddMembershipUser(user.UserName, user.Password, user.Email, user.Question, user.Answer, true, "student");

                    bool.TryParse(objCreateMembershipUser.ToString(), out boolMembershipUserCreated);

                    if (boolMembershipUserCreated)
                    {
                        MembershipUser mUser;
                        mUser = Membership.GetUser(user.UserName);

                        user.UserId = (Guid)mUser.ProviderUserKey;
                        user.CreatedBy = (Guid)mUser.ProviderUserKey;
                        user.UpdatedBy = (Guid)mUser.ProviderUserKey;

                        if (user.Save())
                        {
                            student.StudentUser = user;
                            student.CreatedBy = (Guid)mUser.ProviderUserKey;
                            student.UpdatedBy = (Guid)mUser.ProviderUserKey;

                            if (student.Save())
                            {
                                lblError.Text = Messages.Save_Success;


                                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Student/Student_Profile.aspx'; }", true);
                            }
                        }
                         
                        else
                        {
                            lblError.Text = boolMembershipUserCreated.ToString();
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Profile_Create_Unsuccess + " - " + boolMembershipUserCreated.ToString() + "'); }", true);
                        }
                    }
                    else
                    {
                        lblError.Text = boolMembershipUserCreated.ToString();
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Profile_Create_Unsuccess + " - " + boolMembershipUserCreated.ToString() + "'); }", true);
                    }
					
				}
				catch (Exception ex)
				{
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Profile_Create_Unsuccess +  "'); }", true);
                   
                    throw ex;//new Exception("student Profile info : " + ex.ToString());
				}
			}
			else
			{
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Validation_Fail + "'); }", true);
            }
		}
	}
}