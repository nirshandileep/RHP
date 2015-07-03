﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using RHP.Utility;
using RHP.Common;
using System.Web.Security;
using RHP.CommunicationManagement;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Student_Profile_Wizard : System.Web.UI.UserControl
    {
        public User user = new User();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    Response.Redirect("~/Student/Student_Profile.aspx", false);
                }
                else
                {
                    registrationWizard.ActiveStepIndex = 0;
                    string AccessCode = Utility.GetQueryStringValueByKey(Request, "ActivationKey");

                    if (AccessCode != string.Empty && AccessCode != null)
                    {
                        try
                        {
                            LoadStudent(Guid.Parse(AccessCode));
                        }
                        catch (Exception ex)
                        {

                        }
                    }
                }
            }
        }

        public void LoadStudent(Guid AccessCode)
        {
            user = User.Select(AccessCode);

            if (user != null)
            {
                if (user.UserId.HasValue && user.IsPartialUser == true)
                {

                    txtEmail.Text = user.PersonalEmail;
                    txtFirstName.Text = string.IsNullOrEmpty(user.FirstName) ? string.Empty : user.FirstName;
                    txtLastName.Text = string.IsNullOrEmpty(user.LastName) ? string.Empty : user.LastName;
                }
            }
        }

        protected void btnStep1_Click(object sender, EventArgs e)
        {
            user = User.SelectUserByEmail("Email", txtEmail.Text.Trim().ToLower(), "RoleName", "student");

            if (user == null)
            {
                registrationWizard.ActiveStepIndex = 1;
                hdnPassword.Value = txtPassword.Text;
            }
            else
            {
                lblError.Text = "User with this email address already exist.";
            }
        }

        protected void btnStep2_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnVerify_Click(object sender, EventArgs e)
        {
            if (VerifyConfirmationCode(txtCode.Text.Trim()))
            {
                registrationWizard.ActiveStepIndex = 2;
            }
            else
            {
                lblError.Text = "Verification code entered is incorrect.";
            }
        }

        /// <summary>
        /// This is step 2 not 3
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnStep3_Click(object sender, EventArgs e)
        {
            //Register the user here, add the user details to the membership tables
            user.Email = txtEmail.Text.Trim();
            user.PersonalEmail = txtEmail.Text.Trim();
            user.UserName = txtEmail.Text.Trim();
            user.Password = hdnPassword.Value;
            user.Question = txtQuestion.Text.Trim();
            user.Answer = txtAnswer.Text.Trim();

            aspnet_Roles aspnet_Roles = new aspnet_Roles();
            aspnet_Roles = aspnet_Roles.Select("student");

            user.RoleId = aspnet_Roles.RoleId;

            bool IsActivate = false;
            IsActivate = SystemConfig.GetValue(Enums.SystemConfig.IsEmailActivation).ToLower() == "true" ? false : true;

            object objCreateMembershipUser = new object();
            objCreateMembershipUser = user.AddMembershipUser(user.UserName, user.Password, user.Email, user.Question, user.Answer, IsActivate, "student");

            bool boolMembershipUserCreated = false;
            bool.TryParse(objCreateMembershipUser.ToString(), out boolMembershipUserCreated);

            if (boolMembershipUserCreated)
            {
                Session[Constants.SESSION_LOGGED_USER] = user;

                MembershipUser newUser = Membership.GetUser(user.UserName);
                user.UserId = Guid.Parse(newUser.ProviderUserKey.ToString());
                hdnUserId.Value = user.UserId.ToString();
                user.AspnetUserId = Guid.Parse(newUser.ProviderUserKey.ToString());
                user.CreatedBy = Guid.Parse(newUser.ProviderUserKey.ToString());
                user.UpdatedBy = Guid.Parse(newUser.ProviderUserKey.ToString());
                user.Save();

                if (!IsActivate)
                {
                    SendVerificationCodeEmail(newUser);
                }
            }
            else
            {
                lblError.Text = objCreateMembershipUser.ToString();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('"
                    + Messages.Profile_Create_Unsuccess + " - " + objCreateMembershipUser.ToString() + "'); }", true);
            }

            //Move to next step in wizzard
            //Email activation can be dissabled from config in db
            if (IsActivate)
            {
                registrationWizard.ActiveStepIndex = 3;
            }
            else
            {
                registrationWizard.ActiveStepIndex = 2;
            }
        }

        protected void btnStep4_Click(object sender, EventArgs e)
        {
            //Save rest of the user details and save.
            Guid userId = Guid.Parse(hdnUserId.Value.Trim());
            user = User.Select(userId);//Load user details to the object, else other user details will get empty
            user.FirstName = txtFirstName.Text.Trim();
            user.LastName = txtLastName.Text.Trim();
            DateTime dob;
            if (DateTime.TryParse(txtDateofBirth.Text.Trim(), out dob))
            {
                user.DateOfBirth = dob;
            }
            user.ReferralCode = ReferralCode.Text.Trim();
            user.Save();

            //Page redirect to student profile.
            Response.Redirect("~/Student/Student_Profile.aspx", false);
        }

        private bool VerifyConfirmationCode(string verificationCode)
        {
            Guid userId;
            try
            {
                userId = new Guid(verificationCode.Trim());
            }
            catch
            {
                return false;
            }

            MembershipUser usr = Membership.GetUser(userId);
            if (usr == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        private void SendVerificationCodeEmail(MembershipUser newUser)
        {
            string strMsgContent = message((Guid)newUser.ProviderUserKey);
            string strMsgTitle = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " - Action required for account activation.";
            int rtn = SendEmail(user.Email, strMsgTitle, strMsgContent);
            if (rtn == 1)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Create_Account_Success + "'); }", true);
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Sending_Email_Error + "'); }", true);
            }
        }

        protected void btnResend_Click(object sender, EventArgs e)
        {
            //Resend the verification email
            MembershipUser newUser = Membership.GetUser(user.UserName);
            SendVerificationCodeEmail(newUser);
        }

        protected int SendEmail(string To, string Subject, string Body)
        {
            try
            {
                string host = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_HOST);
                string fromEmail = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL);
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

        private string message(Guid ActivationKey)
        {
            string strMsgContent = string.Empty;

            try
            {
                strMsgContent = "<div style=\"border:solid 1px #efefef;\"><div style=\"width:800;border:solid " +
                                    "1px #efefef;font-weight:bold; font-family:Verdana;font-size:12px; text-align:left;" +
                                    " background-color:#efefef;\" >  <span >" + " " + user.UserName + ", " + "</span></div>" +
                                    "<br />";

                string loginpath = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "Login.aspx?type=s";

                strMsgContent = strMsgContent + "Thank you for creating an account with " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + ", Your account details are as follows. <br/><br/>";

                strMsgContent = strMsgContent + "User Name:  " + user.UserName + " <br/>";

                strMsgContent = strMsgContent + "Email : " + user.Email + " <br/>";

                strMsgContent = strMsgContent + "Secret Question : " + user.Question + " <br/>";

                strMsgContent = strMsgContent + "Please keep these details safe for future use.<br/>";

                strMsgContent = strMsgContent + "If you forget or loose your password, you can reset and obtain a new password by using the secret question.<br/><br/>";

                strMsgContent = strMsgContent + "<b>Please use the below code to activate your account.</b><br/>";

                strMsgContent = strMsgContent + "<b>" + ActivationKey + "</b><br/><br/>";

                strMsgContent = strMsgContent + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " is a platform, where students and landlords can rate, review, and comment on each other. As well as find and connect with other student renters and landlords using our search engine. <br/><br/>";

                strMsgContent = strMsgContent + "If you have any issues with activating your account, please email " + "<a href=\"mailto:" + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL) + "?subject=I have issue with activating my account\">  " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL) + " </a><br/>";

                strMsgContent = strMsgContent + "If you have already activated your account, " + "<a href=" + loginpath + "> click here </a> to login to " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + ". <br/>";

                strMsgContent = strMsgContent + "<br /> <strong>This is an automated response to activate your account. Please do not reply to this email.<br /><br />";

                strMsgContent = strMsgContent + "From the Founder and CEO/President of<br /> <a href=\"" + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "\">" + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "</a></strong><br /><br /></div>";

                strMsgContent = strMsgContent + "</br><span style=\"color:#818181; font-style:italic; font-size:12px;\">This email is confidential and is intended only for the individual named. Although reasonable precautions have been taken to ensure no viruses are present in this email, " + SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + " do not warrant that this e-mail is free from viruses or other corruptions and is not liable to the recipient or any other party should any virus or other corruption be present in this e-mail. If you have received this email in error please notify the sender.</span>";

            }
            catch (Exception ex)
            {
                strMsgContent = string.Empty;

            }
            return strMsgContent;
        }
    }
}