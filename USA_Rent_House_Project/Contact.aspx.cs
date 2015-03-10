using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.CommunicationManagement;
using RHP.Utility;
using RHP.Common;

namespace USA_Rent_House_Project
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MessageButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == true)
            {
                string strMsgContent = message();

                string strMsgTitle = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " - Thank you for Contacting Us.";

                int rtn1 = SendEmail(Email.Text.Trim(), strMsgTitle, strMsgContent);

                string strMsgContent2 = message2(Subject.Text.Trim(), Message.Text.Trim());

                string strMsgTitle2 = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " - You have a message from : " + Name.Text.Trim();

                int rtn2 = SendEmail(SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL), strMsgTitle2, strMsgContent2);


                if (rtn2 == 1)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Sending_Email_success + "'); window.location = '/Default.aspx'; }", true);
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Sending_Email_Error + "'); window.location = '/Contact_Us.aspx'; }", true);
                }
            }
        }

        protected int SendEmail(string To, string Subject, string Body)
        {

            string host = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_HOST);
            string fromEmail = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL);

            try
            {

                EmailManager emailManager = new EmailManager(host, fromEmail);

                //Use the parameters where needed, if not required use empty
                emailManager.SendEmail(To, Subject, string.Empty, fromEmail, string.Empty, Body);
                return 1;
            }
            catch (Exception ex)
            {

                return 0;
            }

        }

        private string message()
        {
            string strMsgContent = string.Empty;

            try
            {

                strMsgContent = "<div style=\"border:solid 1px #efefef;\"><div style=\"width:800;border:solid " +
                                    "1px #efefef;font-weight:bold; font-family:Verdana;font-size:12px; text-align:left;" +
                                    " background-color:#efefef;\" >  <strong>Dear</strong>  <span >" + " " + Name.Text.Trim() + ", " + "</span></div>" +
                                    "<br />";


                strMsgContent = strMsgContent + "Thank you for Contacting Us, <br/><br/>";

                strMsgContent = strMsgContent + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " will contact you soon, <br/><br/>";

                strMsgContent = strMsgContent + "<br /> <strong>This is an automated response to activate your account. Please do not reply to this email.<br /><br />";

                strMsgContent = strMsgContent + "Sincerely yours,<br /> <a href=\"" + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "\">" + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "</a></strong><br /><br /></div>";

                strMsgContent = strMsgContent + "</br><span style=\"color:#818181; font-style:italic; font-size:12px;\">This email is confidential and is intended only for the individual named. Although reasonable precautions have been taken to ensure no viruses are present in this email, " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " do not warrant that this e-mail is free from viruses or other corruptions and is not liable to the recipient or any other party should any virus or other corruption be present in this e-mail. If you have received this email in error please notify the sender.</span>";

            }
            catch (Exception ex)
            {
                strMsgContent = string.Empty;

            }
            return strMsgContent;
        }

        private string message2(string subject, string message)
        {
            string strMsgContent = string.Empty;

            try
            {

                strMsgContent = "<div style=\"border:solid 1px #efefef;\"><div style=\"width:800;border:solid " +
                                    "1px #efefef;font-weight:bold; font-family:Verdana;font-size:12px; text-align:left;" +
                                    " background-color:#efefef;\" >  <strong>Dear</strong>  <span >" + " " + Name.Text.Trim() + ", " + "</span></div>" +
                                    "<br />";


                strMsgContent = strMsgContent + "You have a message from : " + Name.Text.Trim() + ", <br/><br/>";

                strMsgContent = strMsgContent + "email: " + Email.Text.Trim() + " <br/><br/>";

                strMsgContent = strMsgContent + "Subject: " + subject + " <br/><br/>";

                strMsgContent = strMsgContent + "Message: " + message + " <br/><br/>";

                strMsgContent = strMsgContent + "<br /> <strong>This is an automated response to activate your account. Please do not reply to this email.<br /><br />";

                strMsgContent = strMsgContent + "Sincerely yours,<br /> <a href=\"" + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "\">" + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "</a></strong><br /><br /></div>";

                strMsgContent = strMsgContent + "</br><span style=\"color:#818181; font-style:italic; font-size:12px;\">This email is confidential and is intended only for the individual named. Although reasonable precautions have been taken to ensure no viruses are present in this email," + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " do not warrant that this e-mail is free from viruses or other corruptions and is not liable to the recipient or any other party should any virus or other corruption be present in this e-mail. If you have received this email in error please notify the sender.</span>";

            }
            catch (Exception ex)
            {
                strMsgContent = string.Empty;

            }
            return strMsgContent;
        }


    }
}