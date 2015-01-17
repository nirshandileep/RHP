using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.Facebook;
using DotNetOpenAuth.OAuth2;
using RHP.UserManagement;
using RHP.Utility;
using System.Web.Security;
using RHP.StudentManagement;
using RHP.LandlordManagement;
using RHP.Common;
using RHP.CommunicationManagement;


namespace USA_Rent_House_Project
{
    public partial class Facebook_Login : System.Web.UI.Page
    {
       
        /// <summary>
        /// AppId and AppSecret is set in the class
        /// </summary>
        private static readonly FBClient facebookClient = new FBClient
        {
            //ClientIdentifier = facebookAppID,
            //ClientCredentialApplicator = ClientCredentialApplicator.PostParameter(facebookAppSecret),
        };


        protected void Page_Load(object sender, EventArgs e)
        {
            string ReturnURL = string.Empty;
            string userRole = string.Empty;
            Uri currentDomainURL = new Uri(HttpContext.Current.Request.Url.AbsoluteUri);

            string value = Utility.GetQueryStringValueByKey(Request, "type");

            if (!IsPostBack)
            {

                if (value == "s")
                {
                    ReturnURL = "/Student/Student_Profile.aspx";
                    userRole = "student";
                }
                else if (value == "l")
                {
                    ReturnURL = "/Land_load/Land_load_Profile.aspx";
                    userRole = "landlord";
                }
                else
                {
                    ReturnURL = "~/";
                }
            }

            try
            {
                IAuthorizationState authorization = facebookClient.ProcessUserAuthorization();

                User user = new User();
                RHP.StudentManagement.Student student = new RHP.StudentManagement.Student();

                Landlord landload = new Landlord();

                if (authorization == null)
                {
                    SendEmail("FBReturn URL", string.Format("Return URL: {0}, App Id: {1}, App Secret: {2}", currentDomainURL.ToString(), 
                        facebookClient.ClientIdentifier.ToString(), facebookClient.ClientCredentialApplicator.ToString()));

                    //string fbRedirectURL = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.FB_REDIRECT_URL);

                    //Uri url = null;
                    //if (!string.IsNullOrEmpty(fbRedirectURL))
                    //{
                    //    if (value == "s")
                    //    {
                    //        url = new Uri(string.Format(fbRedirectURL, "s"));
                    //    }
                    //    else// if(value == "l")
                    //    {
                    //        url = new Uri(string.Format(fbRedirectURL, "l"));
                    //    }
                    //}

                    //// Kick off authorization request
                    //if (!string.IsNullOrEmpty(fbRedirectURL))
                    //{
                    //    facebookClient.RequestUserAuthorization(null, url);
                    //}
                    //else
                    //{

                    facebookClient.RequestUserAuthorization(scope: new[] { FBClient.Scopes.Email }, returnTo: currentDomainURL);

                    //}
                    
                    // Alternatively you can ask for more information
                    //facebookClient.RequestUserAuthorization(scope: new[] { FBClient.Scopes.Email, FBClient.Scopes.PublishActions });
                }
                else// if (authorization.Scope.Count > 0)
                {
                    string accessCode = string.Empty;
                    if (authorization !=null && authorization.AccessToken != null)
                    {
                        accessCode = Uri.EscapeDataString(authorization.AccessToken);    
                    }
                    
                    IOAuth2Graph oauth2Graph = facebookClient.GetGraph(authorization, new[] { FBGraph.Fields.Defaults, FBGraph.Fields.Email, FBGraph.Fields.Picture});

                    //Todo: Register the user here if not an existing member.
                    user.FBid = string.IsNullOrEmpty(HttpUtility.HtmlEncode(oauth2Graph.Id)) ? string.Empty : HttpUtility.HtmlEncode(oauth2Graph.Id);
                    user.FirstName = string.IsNullOrEmpty(HttpUtility.HtmlEncode(oauth2Graph.FirstName)) ? string.Empty : HttpUtility.HtmlEncode(oauth2Graph.FirstName);
                    user.LastName = string.IsNullOrEmpty(HttpUtility.HtmlEncode(oauth2Graph.LastName)) ? string.Empty : HttpUtility.HtmlEncode(oauth2Graph.LastName);
                    user.Email = string.IsNullOrEmpty(HttpUtility.HtmlEncode(oauth2Graph.Email)) ? string.Empty : HttpUtility.HtmlEncode(oauth2Graph.Email);
                    user.FBAccessToken = string.IsNullOrEmpty(authorization.AccessToken) ? string.Empty : authorization.AccessToken;
                    user.FBProfilePictureURL = string.IsNullOrEmpty(HttpUtility.HtmlEncode(oauth2Graph.AvatarUrl)) ? string.Empty : HttpUtility.HtmlEncode(oauth2Graph.AvatarUrl);
                    user.Gender = string.IsNullOrEmpty(HttpUtility.HtmlEncode(oauth2Graph.Gender)) ? string.Empty : HttpUtility.HtmlEncode(oauth2Graph.Gender);
                    user.IsFBUser = true;
                    user.Password = user.FBid;
                    user.UserName = user.FBid;
                    user.Question = "Are you FB User ?";
                    user.Answer = "FB" + user.FBid;

                    if (user.IsExistingFbUser(user.FBid))
                    {
                        // authanticate fbuser get userneame and pwd
                        // get user from fbid (username)
                        // stringpassword = membership
                        
                            user.UserName = user.GetFBUsernameByFBId(user.FBid);

                            if (user.AuthenticateUser())
                            {
                                try
                                {
                                    Session[Constants.SESSION_LOGGED_USER] = user;
                                    user.RedirectUserFromLogin(false);
                                }
                                catch (Exception ex)
                                {
                                    user.LogOut();
                                }
                            }
                            else
                            {
                                user.LogOut();
                            }
                       
                    }
                    else
                    {

                        if (user.IsUserEmailExist(user.Email))
                        {
                            //Todo need to handle this part correctly.
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.EmailExist + "'); window.location = '/Login.aspx'; }", true);

                        }
                        else
                        {
                            bool boolMembershipUserCreated = false;
                            object objCreateMembershipUser = new object();

                            user.UserId = Guid.NewGuid();
                            objCreateMembershipUser = user.AddMembershipPartialUser(user.UserName, user.Password, user.Email, user.Question, user.Answer, true, user.UserId.Value, userRole);

                            bool.TryParse(objCreateMembershipUser.ToString(), out boolMembershipUserCreated);

                            if (boolMembershipUserCreated)
                            {
                                FormsAuthentication.SetAuthCookie(user.UserName, false);
                                user.UpdatedBy = user.UserId.HasValue ? user.UserId.Value : Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                                user.CreatedBy = user.UserId.HasValue ? user.UserId.Value : Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

                                if (user.Save())
                                {
                                    Session[Constants.SESSION_LOGGED_USER] = user;
                                    MembershipUser newUser = Membership.GetUser(user.UserName);
                                    user.RedirectUserFromLogin(true);
                                }
                                else
                                {
                                    user.LogOut();
                                    //Todo delete membership user from tables
                                    Response.Redirect("~/Login.aspx", false);
                                }
                            }
                            else
                            {
                                user.LogOut();
                                Response.Redirect("~/Login.aspx", false);
                            }
                        }                        
                    }
                }
            }
            catch (Exception ex)
            {
                string emailText = String.Format("Message:{0}, Source:{1}, StackTrace:{2}", ex.Message, ex.Source, ex.StackTrace);
                SendEmail("FB Exception", emailText);
                throw ex;
            }
        }

        private static void SendEmail(string subject, string emailText)
        {
            if (SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.ENABLE_DEVELOPER_EMAILS) == "true")
            {
                //you will get the exception for the first time anyways
                string host = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_HOST);
                string fromEmail = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL);
                EmailManager emailManager = new EmailManager(host, fromEmail);
                emailManager.SendEmail(SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.DEVELOPER_EMAIL),
                    subject, emailText, fromEmail, string.Empty, string.Empty);
            }
        }
    }
}