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
using System.Web.Security;
using RHP.LandlordManagement;
using System.Data;



namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Current_House_Landload_info : System.Web.UI.UserControl
    {
        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {
                    _user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                }
                else
                {
                   
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

        public Landlord landload = new Landlord();

        public Guid? LandlordId
        {
            get
            {
                if (string.IsNullOrEmpty(hdnLandlordId.Value.Trim()))
                {
                    return null;
                }
                else
                {
                    return Guid.Parse(hdnLandlordId.Value.Trim());
                }
            }
            set
            {
                if (value.HasValue)
                {
                    hdnLandlordId.Value = value.Value.ToString();
                }
                else
                {
                    hdnLandlordId.Value = string.Empty;
                }

            }
        }

        public delegate void PassLandlordIDToParent(Guid landlordId);

        public event PassLandlordIDToParent PassID;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    LoadUserData();
                }
            }
        }

        public void LoadUserData()
        {
            // user data
            

            UserDAO userDAO = new UserDAO();

            user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

            if (user.HouseId != null)
            {
                Labelmessage.Text = "Current landload Details";
                DataSet LandlordData = userDAO.SelectLandlordByHouseId(user.HouseId.Value);

       
                if(LandlordData != null && LandlordData.Tables[0].Rows.Count > 0)
                {
                    PassID(Guid.Parse(LandlordData.Tables[0].Rows[0]["UserId"].ToString().Trim()));

                    ButtonVerify.Visible = false;
                    Email.Enabled = false;
                    FirstName.Text = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["FirstName"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["FirstName"].ToString().Trim();
                    MiddleName.Text = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["MiddleName"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["MiddleName"].ToString().Trim();
                    LastName.Text = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["LastName"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["LastName"].ToString().Trim();
                    Email.Text = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["PersonalEmail"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["PersonalEmail"].ToString().Trim();
                    Mobile.Text = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["BestContactNumber"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["BestContactNumber"].ToString().Trim();
                }
               
            }
        }

        public bool Save()
        {
            bool result = true;
            aspnet_Roles aspnet_Roles_ = new aspnet_Roles();

            aspnet_Roles_ = aspnet_Roles.Select("landlord");

            User Landlorduser = new User();
            if (LandlordId == null)
            {

                Landlorduser.UserId = Guid.NewGuid();
                Landlorduser.PersonalEmail = Email.Text.Trim();
                Landlorduser.FirstName = FirstName.Text.Trim();
                Landlorduser.MiddleName = MiddleName.Text.Trim();
                Landlorduser.LastName = LastName.Text.Trim();
                Landlorduser.BestContactNumber = Mobile.Text.Trim();
                Landlorduser.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                Landlorduser.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                Landlorduser.IsPartialUser = true;
                Landlorduser.RoleId = aspnet_Roles_.RoleId;

                if (Landlorduser.Save())
                {
                    landload.user = Landlorduser;
                    landload.LandlordId = Landlorduser.UserId.HasValue ? Landlorduser.UserId.Value : Landlorduser.UserId.Value;
                    LandlordId = landload.LandlordId;//setting value of property
                    landload.LandlordName = Landlorduser.FirstName + " " + Landlorduser.MiddleName + " " + Landlorduser.LastName;
             
                    landload.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    landload.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    result = landload.Save();
                }

                LandlordId = Landlorduser.UserId;
            }
            else
            {
               
                // Landload already registerd
            }
            return result;
        }

        protected void ButtonVerify_Click(object sender, EventArgs e)
        {
            Labelmessage.Text = "";
            if (Email.Text.Trim() != "")
            {
                User user_ = User.SelectUserByEmail("Email", Email.Text.Trim().ToLower(), "RoleName", "landlord");

                if (user_ != null)
                {
                    Labelmessage.Text = "landload verified for email : " + Email.Text.Trim().ToLower();
                    LandlordId = user_.UserId;

                    //Pass the landlordId back to the main page
                    PassID(user_.UserId.Value);

                    Email.Text = user_.Email;
                    FirstName.Text = user_.FirstName;
                    MiddleName.Text = user_.MiddleName;
                    LastName.Text = user_.LastName;
                    Mobile.Text = user_.BestContactNumber;
                }
                else
                {
                    Labelmessage.Text = "can not find registered landload for email : " + Email.Text.Trim().ToLower() +". Please enter details to continue..";
                    FirstName.Text = "";
                    MiddleName.Text = "";
                    LastName.Text = "";
                    Mobile.Text = "";
                    FirstName.Enabled = true;
                    MiddleName.Enabled = true;
                    LastName.Enabled = true;
                    Mobile.Enabled = true;
                }
            }
            else
            {
                clear();

            }
        }

        public void clear()
        {
            Labelmessage.Text = "";
            Email.Text = "";
            FirstName.Text = "";
            MiddleName.Text = "";
            LastName.Text = "";
            Mobile.Text = "";
            FirstName.Enabled = false;
            MiddleName.Enabled = false;
            LastName.Enabled = false;
            Mobile.Enabled = false;
        }

        public bool Next()
        {
            return true;
        }
    }
}