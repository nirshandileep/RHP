using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using System.Web.Security;

namespace USA_Rent_House_Project.Modules
{
    public partial class Change_Secret_Question : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MembershipUser u = Membership.GetUser();
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                CurrentQuestionTextbox.Text = u.PasswordQuestion.ToString();
            }
            else
            { Response.Redirect("~/Login.aspx"); }
            
        }

        public void ChangePasswordQuestion_OnClick(object sender, EventArgs args)
        {
            try
            {

                MembershipUser u = Membership.GetUser();
                Boolean result = u.ChangePasswordQuestionAndAnswer(PasswordTextbox.Text,
                                                  QuestionTextbox.Text,
                                                  AnswerTextbox.Text);

                if (result)
                    Msg.Text = "Password Question and Answer changed.";
                else
                    Msg.Text = "Password Question and Answer change failed.";
            }
            catch (Exception e)
            {
                Msg.Text = "Change failed. Please re-enter your values and try again.";
            }
        }
    }
}