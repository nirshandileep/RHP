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


namespace USA_Rent_House_Project
{
    public partial class Facebook_Login : System.Web.UI.Page
    {
        //private static string facebookAppID = "1442754675988252";
        //private static string facebookAppSecret = "f7c55471278a90514530f0e4806976ec";

        private static readonly FBClient facebookClient = new FBClient
        {
            //ClientIdentifier = facebookAppID,
            //ClientCredentialApplicator = ClientCredentialApplicator.PostParameter(facebookAppSecret),
        };


        protected void Page_Load(object sender, EventArgs e)
        {
            string ReturnURL = "";

            string userRole = "";

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
                    // Kick off authorization request
                    facebookClient.RequestUserAuthorization(null, currentDomainURL); 

                    // Alternatively you can ask for more information
                    //facebookClient.RequestUserAuthorization(scope: new[] { FBClient.Scopes.Email });
                }
                else// if (authorization.Scope.Count > 0)
                {
                    //OAuth2Graph oauth2Graph = facebookClient.GetGraph(authorization);
                    IOAuth2Graph oauth2Graph = facebookClient.GetGraph(authorization, new[] { FBGraph.Fields.Defaults, FBGraph.Fields.Email, FBGraph.Fields.Picture, FBGraph.Fields.Birthday });

                    //string name = HttpUtility.HtmlEncode(oauth2Graph.Name);
                    //string DOB = HttpUtility.HtmlEncode(oauth2Graph.BirthdayDT);
                    //string email = HttpUtility.HtmlEncode(oauth2Graph.Email);

                    //StatusLabel.Text += name + "<br />";
                    //StatusLabel.Text += DOB + ",<br />";
                    //StatusLabel.Text += email;

                     //Todo: Register the user here if not an existing member.

                    user.FBid = string.IsNullOrEmpty(HttpUtility.HtmlEncode(oauth2Graph.Id)) ? string.Empty : HttpUtility.HtmlEncode(oauth2Graph.Id);
                    user.LastName = string.IsNullOrEmpty(HttpUtility.HtmlEncode(oauth2Graph.Name)) ? string.Empty : HttpUtility.HtmlEncode(oauth2Graph.Name);
                    user.Email = string.IsNullOrEmpty(HttpUtility.HtmlEncode(oauth2Graph.Email)) ? string.Empty : HttpUtility.HtmlEncode(oauth2Graph.Email);
                    user.FBAccessToken = string.IsNullOrEmpty(authorization.AccessToken) ? string.Empty : authorization.AccessToken;
                    user.FBProfilePictureURL = string.IsNullOrEmpty(HttpUtility.HtmlEncode(oauth2Graph.AvatarUrl)) ? string.Empty : HttpUtility.HtmlEncode(oauth2Graph.AvatarUrl);
                    user.Gender = string.IsNullOrEmpty(HttpUtility.HtmlEncode(oauth2Graph.Gender)) ? string.Empty : HttpUtility.HtmlEncode(oauth2Graph.Gender);
                    user.IsFBUser = true;
                    user.Password = user.FBid;
                    user.UserName = user.FBid;
                    user.Question = "Are you FB User ?";
                    user.Answer = "FB"+user.FBid;


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
                        bool boolMembershipUserCreated = false;
                         object objCreateMembershipUser = new object();
                         objCreateMembershipUser = user.AddMembershipUser(user.UserName, user.Password, user.Email, user.Question, user.Answer, true, userRole);

                            bool.TryParse(objCreateMembershipUser.ToString(), out boolMembershipUserCreated);

                            if (boolMembershipUserCreated)
                            {
                                user.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                                user.UpdatedBy = user.UserId.HasValue ? user.UserId.Value : Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                                user.CreatedBy = user.UserId.HasValue ? user.UserId.Value : Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                               
                                if (user.Save())
                                {
                                    Session[Constants.SESSION_LOGGED_USER] = user;

                                    FormsAuthentication.SetAuthCookie(user.UserName, false);
                                    MembershipUser newUser = Membership.GetUser(user.UserName);

                                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Create_Account_Success + "'); window.location = '/Login.aspx'; }", true);
                                    
                                }
                                else
                                {
                                    user.LogOut();
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
            catch (Exception ex)
            {
                //you will get the exception for the first time anyways
                StatusLabel.Text = "You are f****d!";
                throw ex;
            }

            //IAuthorizationState AccessToken = facebookClient.GetClientAccessToken();
            //HashSet<string> accessScope = new HashSet<string>();
            //accessScope = AccessToken.Scope;
            //string token = AccessToken.AccessToken;//This can be saved in the datebase to use later to post things.


           // public void CreateFBUser()
           // {
                 //object objCreateMembershipUser = new object();

                        //bool boolMembershipUserCreated = false;

                        //objCreateMembershipUser = user.AddMembershipUser(user.UserName, user.Password, user.Email, user.Question, user.Answer, true, userRole);
                        //bool.TryParse(objCreateMembershipUser.ToString(), out boolMembershipUserCreated);

                        //if (boolMembershipUserCreated)
                        //{
                        //    MembershipUser mUser;
                        //    mUser = Membership.GetUser(user.UserName);
                        //    user.UserId = (Guid)mUser.ProviderUserKey;
                        //    user.CreatedBy = (Guid)mUser.ProviderUserKey;
                        //    user.UpdatedBy = (Guid)mUser.ProviderUserKey;

                        //    if (user.Save())
                        //    {
                        //        Session[Constants.SESSION_LOGGED_USER] = user;

                        //        if (userRole == "student")
                        //        {

                        //            student.StudentUser = user;
                        //            student.CreatedBy = (Guid)mUser.ProviderUserKey;
                        //            student.UpdatedBy = (Guid)mUser.ProviderUserKey;

                        //            if (student.School == null)
                        //            {
                        //                student.School = new School();
                        //            }

                        //            //student.School.SchoolId = null;
                        //            //student.Year = null;
                        //            //student.IsDeleted = null;
                        //            //student.LandloadName = null;
                        //            //student.LandloadPlace = null;

                        //            if (student.Save())
                        //            {
                        //                // Messages.Save_Success;
                        //            }

                                    
                        //        }
                        //        else if (userRole == "landlord")
                        //        {
                        //            landload.LandlordId = (Guid)mUser.ProviderUserKey;
                        //            landload.LandlordName = user.Name;
                        //            landload.user = user;
                        //            landload.CreatedBy = (Guid)mUser.ProviderUserKey;
                        //            landload.UpdatedBy = (Guid)mUser.ProviderUserKey;

                        //            if (landload.Save())
                        //            {
                        //               // Messages.Save_Success;
                        //            }

                        //        }
                        //    }

                        //    Response.Redirect(ReturnURL, false);
                        //}
                        //else
                        //{
                        //    // error
                        //}

           // }
        }

       
    }
}