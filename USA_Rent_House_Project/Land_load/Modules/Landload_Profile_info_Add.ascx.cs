using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using RHP.UserManagement;
using RHP.Utility;


namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class Landload_Profile_info_Add : System.Web.UI.UserControl
    {
        User user = new User();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string v = Utility.GetQueryStringValueByKey(Request, "type");
                if (v == "s")
                {
                    loadFBData();
                }

            }
        }

        public void loadFBData()
        {
            Name.Text = user.Name;
            Email.Text = user.Email;
            setpwd.Visible = false;
            confirmpwd.Visible = false;
            // Gender
        }

        public object AddMembershipUser(string strUserName, string strPassword, string strEmail, string strQuestion, string strAnswer, bool boolAllowLogon)
        {

            object objMembershipUser = false;
            MembershipCreateStatus mcstatus = new MembershipCreateStatus();

            if (!strQuestion.EndsWith("?"))
                strQuestion = strQuestion + "?";

            Membership.CreateUser(strUserName, strPassword, strEmail, strQuestion, strAnswer, boolAllowLogon, out mcstatus);
            switch (mcstatus)
            {
                case (MembershipCreateStatus.Success):
                    {
                        objMembershipUser = true;

                        Roles.AddUserToRole(strUserName, "landload"); 
                        break;
                    }
                case (MembershipCreateStatus.DuplicateProviderUserKey):
                    {
                        objMembershipUser = "Internal Error. Contact Administrator";
                        break;
                    }

                case (MembershipCreateStatus.DuplicateUserName):
                    {
                        objMembershipUser = "User Name already in system.";
                        break;
                    }
                case (MembershipCreateStatus.InvalidPassword):
                    {
                        objMembershipUser = "Invalid Password.";
                        break;
                    }
                case (MembershipCreateStatus.InvalidUserName):
                    {
                        objMembershipUser = "Invalid User Name";
                        break;
                    }
                case (MembershipCreateStatus.DuplicateEmail):
                    {
                        objMembershipUser = "Email already in system.";
                        break;
                    }
                case (MembershipCreateStatus.InvalidEmail):
                    {
                        objMembershipUser = "Invalid Email.";
                        break;
                    }
                default:
                    {
                        objMembershipUser = "Invalid User Name";
                        break;
                    }
            }
            return objMembershipUser;
        }


        protected void CreateUserButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == true)
            {

                try
                {

                    object objCreateMembershipUser = new object();

                    bool boolMembershipUserCreated = false;

                    string pwd = "";

                    if (Utility.GetQueryStringValueByKey(Request, "type") == "s")
                    {
                        pwd = user.Password;
                    }
                    else
                    {
                        pwd = Password.Text.Trim();
                    }


                    objCreateMembershipUser = AddMembershipUser(UserName.Text.Trim(), pwd, Email.Text.Trim(), Question.Text.Trim(), Answer.Text.Trim(), true);

                    bool.TryParse(objCreateMembershipUser.ToString(), out boolMembershipUserCreated);

                    if (boolMembershipUserCreated)
                    {
                        MembershipUser mUser;
                        mUser = Membership.GetUser(UserName.Text.Trim());
                        string strKey = mUser.ProviderUserKey.ToString();

                        string url = "/Land_load/Land_load_Profile.aspx";
                        string script = "window.onload = function(){ alert('";
                        script += "Successfully created";
                        script += "');";
                        script += "window.location = '";
                        script += url;
                        script += "'; }";
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);


                    }
                    else
                    {
                        // FormsAuthentication.SetAuthCookie(strUsername, false /* createPersistentCookie */);

                        // LabelError.Text = "" + objCreateMembershipUser.ToString();
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