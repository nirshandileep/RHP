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
				
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    Response.Redirect("~/Student/Student_Profile.aspx", false);
                }
                else
                {
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
                        user.Password = Password.Text.Trim();
                        user.UserName = UserName.Text.Trim();
                        user.Question = Question.Text.Trim();
                        user.Answer = Answer.Text.Trim();
                  
                    object objCreateMembershipUser = new object();
                    objCreateMembershipUser = user.AddMembershipUser(user.UserName, user.Password, user.Email, user.Question, user.Answer, true, "student");

                    bool.TryParse(objCreateMembershipUser.ToString(), out boolMembershipUserCreated);

                    if (boolMembershipUserCreated)
                    {

                         Session[Constants.SESSION_LOGGED_USER] = user;
                         Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Student/Student_Profile.aspx'; }", true);
                            
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