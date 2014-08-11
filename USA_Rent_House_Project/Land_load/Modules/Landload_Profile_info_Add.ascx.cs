using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using RHP.UserManagement;
using RHP.Utility;
using RHP.LandlordManagement;
using RHP.SessionManager;
using RHP.Common;

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class Landload_Profile_info_Add : System.Web.UI.UserControl
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
                    if (user.IsFBUser == true)
                    {
                        loadFBData();
                    }
                    else {
                        FormsAuthentication.SignOut();
                        HttpContext.Current.Response.Redirect("/Land_load/Land_load_Profile_Add.aspx", false);
                    }

                }

            }
        }

        private void LoadInitialData()
        {
            //Set Gender
            DrpGender.Items.AddRange(Constants.LANDLOAD_SEX_LIST);
        }

        public void loadFBData()
        {
            if (user.IsFBUser)
            {
                if (string.IsNullOrEmpty(user.Email) || user.Email == user.UserId + "@FB.com")
                {
                    setEmail.Visible = false;
                }
                else { Email.Text = user.Email; }

                setUserName.Visible = false;
                setpwd.Visible = false;
                confirmpwd.Visible = false;
                setQuestiontitle.Visible = false;
                setQuestion.Visible = false;
                setAnswer.Visible = false;

                Name.Text = string.IsNullOrEmpty(user.Name) ? string.Empty : user.Name;

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
                    user.Gender = DrpGender.SelectedItem.Value.ToString();
                   
                    user.Status = "Active";

                    if (HttpContext.Current.User.Identity.IsAuthenticated)
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
                          objCreateMembershipUser = user.AddMembershipUser(user.UserName, user.Password, user.Email, user.Question, user.Answer, true, "landlord");

                            bool.TryParse(objCreateMembershipUser.ToString(), out boolMembershipUserCreated);

                            if (boolMembershipUserCreated)
                            {
                                MembershipUser mUser;
                                mUser = Membership.GetUser(UserName.Text.Trim());
                                user.UserId = new Guid(mUser.ProviderUserKey.ToString());

                            }
                            else
                            {
                                lblError.Text = boolMembershipUserCreated.ToString();
                            }
                    }

                    if (boolMembershipUserCreated)
                    {
                        MembershipUser mUser = Membership.GetUser(UserName.Text.Trim());
                        user.UserId = (Guid)mUser.ProviderUserKey;
                        user.CreatedBy = (Guid)mUser.ProviderUserKey;
                        user.UpdatedBy = (Guid)mUser.ProviderUserKey;

                        if (user.Save())
                        {
                            landload.LandlordId = (Guid)mUser.ProviderUserKey;
                            landload.LandlordName = Name.Text.Trim();
                            landload.user = user;
                            landload.CreatedBy = (Guid)mUser.ProviderUserKey;
                            landload.UpdatedBy = (Guid)mUser.ProviderUserKey;

                            if ( landload.Save())
                            {
                                lblError.Text = Messages.Save_Success;
                            }
                           

                            // success

                        }

                       
                    }
                   
                }
                catch (Exception ex)
                {
                    throw new Exception("LandLord Profile info : " + ex.ToString());
                }
            }
            else
            {

            }
        }
    }
}