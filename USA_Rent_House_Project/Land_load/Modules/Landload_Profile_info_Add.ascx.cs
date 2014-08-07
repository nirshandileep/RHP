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

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class Landload_Profile_info_Add : System.Web.UI.UserControl
    {
        User user = new User();
        Landlord landload = new Landlord();

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
            setUserName.Visible = false;
            setpwd.Visible = false;
            confirmpwd.Visible = false;

            for (int i = 0; i < DrpGender.Items.Count; i++)
            {
                if (DrpGender.Items[i].Value == user.Gender)
                {
                    DrpGender.Items[0].Selected = true;
                }
            }
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

                    if (Utility.GetQueryStringValueByKey(Request, "type") == "s")
                    {
                        //user.Password;  FB password
                        //user.UserName  FB username

                    }
                    else
                    {
                        user.Password = Password.Text.Trim();
                        user.Name = Name.Text.Trim();
                    }

                    user.Email = Email.Text.Trim();
                    user.StreetAddress = Address.Text.Trim();
                    user.City = City.Text.Trim();
                    user.State = Drpstate.SelectedItem.Value.ToString();
                    user.Zip = Zip.Text.Trim();
                    user.BestContactNumber = Mobile.Text.Trim();
                    user.Gender = DrpGender.SelectedItem.Value.ToString();
                    user.Question = Question.Text.Trim();
                    user.Answer = Answer.Text.Trim();
                    user.Status = "Active";

                    objCreateMembershipUser = AddMembershipUser(user.UserName, user.Password, user.Email, user.Question, user.Answer, true);

                    bool.TryParse(objCreateMembershipUser.ToString(), out boolMembershipUserCreated);

                    if (boolMembershipUserCreated)
                    {
                        MembershipUser mUser;
                        mUser = Membership.GetUser(UserName.Text.Trim());
                        string strKey = mUser.ProviderUserKey.ToString();

                        if (user.Save())
                        {
                            landload.Save();

                            // success
                        }

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