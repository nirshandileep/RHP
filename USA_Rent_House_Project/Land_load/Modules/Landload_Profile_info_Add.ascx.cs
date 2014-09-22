﻿using System;
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

using System.Net;
using System.Net.Mail;

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
                    _user = new User(); // User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));//_user = new User();
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

        Landlord landload = new Landlord();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    Response.Redirect("~/Land_load/Land_load_Profile.aspx", false);
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
                    user.Status = "Active";
                        user.Password = Password.Text.Trim();
                        user.UserName = UserName.Text.Trim();
                        user.Question = Question.Text.Trim();
                        user.Answer = Answer.Text.Trim();

                          object objCreateMembershipUser = new object();

                          bool IsActivate = false;

                          if (SystemConfig.GetValue(Enums.SystemConfig.IsEmailActivation).ToLower() == "true")
                          {
                              IsActivate = false;
                          }
                          else
                          {
                              IsActivate = true;
                          }

                          if (user.IsPartialUser)
                            {
                                objCreateMembershipUser = user.AddMembershipPartialUser(user.UserName, user.Password, user.Email, user.Question, user.Answer, IsActivate, user.UserId.Value, "landlord");
                            }
                            else
                            {
                                objCreateMembershipUser = user.AddMembershipUser(user.UserName, user.Password, user.Email, user.Question, user.Answer, IsActivate, "landlord");
                            }

                            bool.TryParse(objCreateMembershipUser.ToString(), out boolMembershipUserCreated);

                            if (boolMembershipUserCreated)
                            {
                                Session[Constants.SESSION_LOGGED_USER] = user;

                                MembershipUser newUser = Membership.GetUser(user.UserName);
                                 if (SystemConfig.GetValue(Enums.SystemConfig.IsEmailActivation).ToLower() == "true")
                                {
                                
                                        if (SendingMail((Guid)newUser.ProviderUserKey))
                                        {
                                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Create_Account_Success + "'); window.location = '/Login.aspx'; }", true);
                                        }
                                        else
                                        {
                                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Sending_Email_Error + "'); window.location = '/Login.aspx'; }", true);
                                        }
                                            // success
                                }
                                 else
                                 {
                                     Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Create_Account_Success + "'); window.location = '/Login.aspx'; }", true);
                                 }
                            }
                            else
                            {
                                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Profile_Create_Unsuccess + " - " + boolMembershipUserCreated.ToString() + "'); }", true);
                            }

                }
                catch (Exception ex)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Profile_Create_Unsuccess + "'); }", true);
                   
                   // throw new Exception("LandLord Profile info : " + ex.ToString());
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Validation_Fail + "'); }", true);
            }
        }



        protected bool SendingMail(Guid ActivationKey)
        {

            try
            {
                using (MailMessage mm = new MailMessage(Constants.FROMEMAIL, user.Email))
                {
                    mm.Subject = Constants.ACTIVATIONEMAILSUBJECT;
                    mm.Body = message(ActivationKey);

                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();

                    smtp.Host = Constants.EMAILHOST;

                    smtp.EnableSsl = true;
                    NetworkCredential NetworkCred = new NetworkCredential(Constants.FROMEMAIL, Constants.FROMEMAILPASSWORD);

                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;

                    smtp.Port = Convert.ToInt16(Constants.EMAILPORT);

                    smtp.Send(mm);

                    return true;
                }
            }
            catch (Exception ex)
            {
                return false;
                throw ex;
            }

        }

        private string message(Guid ActivationKey)
        {
            string strMsgContent = string.Empty;

            try
            {
                string verifyUrl = Constants.SITEURL + "Email_Verification.aspx?ActivationKey=" + ActivationKey;
                strMsgContent = "<div style=\"border:solid 1px #efefef;\"><div style=\"width:800;border:solid " +
                                    "1px #efefef;font-weight:bold; font-family:Verdana;font-size:12px; text-align:left;" +
                                    " background-color:#efefef;\" >  <strong>Dear</strong>  <span >" + " " + user.UserName + ", " + "</span></div>" +
                                    "<br />";

                string loginpath = Constants.SITEURL + "Login.aspx";

                strMsgContent = strMsgContent + "Thank you for creating a account with ratemystudenthome.com, Your account details are as follows. <br/><br/>";

                strMsgContent = strMsgContent + "User Name:  " + user.UserName + " <br/>";

                strMsgContent = strMsgContent + "Email : " + user.Email + " <br/>";

                strMsgContent = strMsgContent + "Secret Question : " + user.Question + " <br/>";

                strMsgContent = strMsgContent + "Please keep these details safe for future use.<br/>";

                strMsgContent = strMsgContent + "If you forget your password, you can get a new password by using secret question.<br/><br/>";

                strMsgContent = strMsgContent + "Please click on the link below to activate your account.<br/>";

                strMsgContent = strMsgContent + "<a href=" + verifyUrl + "> Verify Your Email Account </a>  <br/><br/>";

                strMsgContent = strMsgContent + "If you have any issues with activating your account, please email " + "<a href=\"mailto:info@ratemystudenthome.com?subject=I have issue with activating my account\">  info@ratemystudenthome.com </a><br/>";

                strMsgContent = strMsgContent + "If you have already activated your account, " + "<a href=" + loginpath + "> click here </a> to login to ratemystudenthome.com. <br/>";

                strMsgContent = strMsgContent + "<br /> <strong>This is an automated response to activate your account. Please do not reply to this email.<br /><br />";

                strMsgContent = strMsgContent + "Sincerely yours,<br /> <a href=\"www.ratemystudenthome.com\">ratemystudenthome.com</a></strong><br /><br /></div>";

                strMsgContent = strMsgContent + "</br><span style=\"color:#818181; font-style:italic; font-size:12px;\">This email is confidential and is intended only for the individual named. Although reasonable precautions have been taken to ensure no viruses are present in this email, ratemystudenthome.com do not warrant that this e-mail is free from viruses or other corruptions and is not liable to the recipient or any other party should any virus or other corruption be present in this e-mail. If you have received this email in error please notify the sender.</span>";
                 
            }
            catch (Exception ex)
            {
                strMsgContent = string.Empty;

            }
            return strMsgContent;
        }
    }
}