using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;



namespace USA_Rent_House_Project.Modules
{
    public partial class Secret_Question : System.Web.UI.UserControl
    {
        MembershipUser u;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EnterUserName_Click(object sender, EventArgs e)
        {
            if (!Membership.EnablePasswordReset)
            {
                FormsAuthentication.RedirectToLoginPage();
            }

            Msg.Text = "";

            if (UserName.Text.Trim() == "")
            {
                Msg.Text = "Please supply a username.";
            }
            else
            {
                VerifyUsername();
            }
        }


        public void VerifyUsername()
        {
            u = Membership.GetUser(UserName.Text.Trim(), false);

            if (u == null)
            {
                Msg.Text = "Username " + Server.HtmlEncode(UserName.Text.Trim()) + " not found. Please check the value and re-enter.";

                QuestionLabel.Text = "";
                QuestionLabel.Enabled = false;
                AnswerTextBox.Enabled = false;
                ResetPasswordButton.Enabled = false;
            }
            else
            {
                MemberUserName.Text = u.UserName;
                QuestionLabel.Text = u.PasswordQuestion;
                MemberUserName.Enabled = true;
                QuestionLabel.Enabled = true;
                AnswerTextBox.Enabled = true;
                ResetPasswordButton.Enabled = true;
            }
        }
        protected void ResetPassword_OnClick(object sender, EventArgs e)
        {
            string newPassword = "";
              
                try
                {

                    u = Membership.GetUser(MemberUserName.Text, false);
                    newPassword = u.ResetPassword(AnswerTextBox.Text); 

                    if (newPassword != null)
                    {
                        Msg.Text = "Password reset. Your new password is: " + Server.HtmlEncode(newPassword);
                    }
                    else
                    {
                        Msg.Text = "Password reset failed. Please re-enter your values and try again.";
                    }
                }
                catch (MembershipPasswordException ex)
                {
                    Msg.Text = "Invalid password answer. Please re-enter and try again.";
                    return;
                }
                catch (Exception ee)
                {
                    Msg.Text = ee.Message;
                    return;
                }

        }

       

    }
}