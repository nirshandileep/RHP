using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;
using System.Configuration;
using System.Net.Mail;
using System.Net;

namespace USA_Rent_House_Project.Modules
{
    public partial class Request_Password : System.Web.UI.UserControl
    {
        MembershipUser u;
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            //string pw = Membership.GeneratePassword(8, 1);
            // u = Membership.GetUser();

           string MembershipUserName = Membership.GetUserNameByEmail(Email.Text.Trim());
           string strmsg = "";

           if (MembershipUserName == UserName.Text.Trim())
           {
              
               u = Membership.GetUser(UserName.Text.Trim(), false);
               try
               {
                   string newPassword = "";
                   newPassword = u.ResetPassword();
                 

                   string strMailTo = Email.Text.Trim();
                   string strMsgTitle = "Rent-House Password Recovery Details";
                   string strMsgContent = message(Server.HtmlEncode(newPassword), "user's name");

                  int rtn = SendEmail(u.Email, strMsgTitle, strMsgContent);

                  if (rtn == 1)
                   {
                         strmsg = "New password request accepted! Please check your email.";
                   }
                   else
                   {
                         strmsg = "New password request not accepted! Please try again.";
                   }
               }
               catch (MembershipPasswordException ex1)
               {
                   strmsg = "New password request not accepted! Please try again.";
                   return;
               }
               catch (Exception ex2)
               {
                   strmsg = "New password request not accepted! Please try again.";
                   return;
               }
           }
           else
           {
               strmsg = "Enter correct User details!";
               return;
           }


      }

        protected int SendEmail(string To, string Subject, string Body)
        {

            try
            {
                string fromemail = ConfigurationManager.AppSettings["FromMail"].ToString();
                string pwd = ConfigurationManager.AppSettings["pwd"].ToString();

                using (MailMessage mm = new MailMessage(fromemail, To))
                {
                    mm.Subject = Subject;
                    mm.Body = Body;

                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();

                    smtp.Host = ConfigurationManager.AppSettings["Host"].ToString();

                    smtp.EnableSsl = false;
                    NetworkCredential NetworkCred = new NetworkCredential(fromemail, pwd);
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;

                    smtp.Port = Convert.ToInt16(ConfigurationManager.AppSettings["Port"].ToString());

                    smtp.Send(mm);
                }

                return 1;
            }
            catch (Exception ex)
            {
                return 0;
            }

        }

        private string message(string uniquekey, string StrContactName)
        {
            string Url = ConfigurationManager.AppSettings["COLSitePath"].ToString() + "Account/Login.aspx";
            string strMsgContent = "<div style=\"border:solid 1px #efefef;\"><div style=\"width:800;border:solid " +
                                "1px #efefef;font-weight:bold; font-family:Verdana;font-size:12px; text-align:left;" +
                                " background-color:#efefef;\" >  <strong>Dear </strong>  <span >" + " " + StrContactName + ", " + "</span></div>" +
                                "<br />";


            strMsgContent = strMsgContent + "You are receiving this email from Rent-House because you requested a new password. Your registered email is: " + Email.Text.Trim() + "<br/><br/>";

            strMsgContent = strMsgContent + "Your new password is " + uniquekey + "<br/><br/>";

            strMsgContent = strMsgContent + "We suggest that you login immediately and then change your password. <a href=\"" + Url + "\"> login </a>  <br/>";

            strMsgContent = strMsgContent + "<br /> <strong>This is an automated response to your request. Please do not reply to this email.<br /><br />";

            strMsgContent = strMsgContent + "Sincerely yours,<br /> <a href=\"www.Rent-House.com.au\">Rent-House..com.au</a></strong><br /><br />";

            strMsgContent = strMsgContent + "</br><span style=\"color:#818181; font-style:italic; font-size:12px;\">This email is confidential and is intended only for the individual named. Although reasonable precautions have been taken to ensure no viruses are present in this email, Rent-House do not warrant that this e-mail is free from viruses or other corruptions and is not liable to the recipient or any other party should any virus or other corruption be present in this e-mail. If you have received this email in error please notify the sender.</span>";

            return strMsgContent;
        }
    }
}