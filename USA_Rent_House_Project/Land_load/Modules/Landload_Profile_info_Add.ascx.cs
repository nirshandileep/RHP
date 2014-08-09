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
                if (user.UserId != null)
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

     
        protected void CreateUserButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == true)
            {

                try
                {

                    bool boolMembershipUserCreated = false;

                    user.Name = Name.Text.Trim();
                    user.Email = Email.Text.Trim();
                    user.StreetAddress = Address.Text.Trim();
                    user.City = City.Text.Trim();
                    user.State = Drpstate.SelectedItem.Value.ToString();
                    user.Zip = Zip.Text.Trim();
                    user.BestContactNumber = Mobile.Text.Trim();
                    user.Gender = DrpGender.SelectedItem.Value.ToString();
                   
                    user.Status = "Active";

                    if (user.UserId != null)
                    {
                        // user created by facebook
                        boolMembershipUserCreated = true;
                    }
                    else
                    {
                        user.Password = Password.Text.Trim();
                        user.UserName = UserName.Text.Trim();
                        user.Question = Question.Text.Trim();
                        user.Answer = Answer.Text.Trim();

                          object objCreateMembershipUser = new object();

                            objCreateMembershipUser = user.AddMembershipUser(user.UserName, user.Password, user.Email, user.Question, user.Answer, true, "landload");

                            bool.TryParse(objCreateMembershipUser.ToString(), out boolMembershipUserCreated);

                            if (boolMembershipUserCreated)
                            {
                                MembershipUser mUser;
                                mUser = Membership.GetUser(UserName.Text.Trim());
                                string strKey = mUser.ProviderUserKey.ToString();
                                user.UserId = user.UserId;

                            }
                            else
                            {
                                // error
                            }
                    }

                    if (boolMembershipUserCreated)
                    {
                        if (user.Save())
                        {
                            landload.Save();

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