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
            string LoginText = "";

            if (!IsPostBack)
            {
                string value = Utility.GetQueryStringValueByKey(Request, "type");

                if (value == "s")
                {
                    ReturnURL = "~/Student/Student_Profile_Add.aspx?type=s";
                    LoginText = "Student Login";
                }
                else if (value == "l")
                {
                    ReturnURL = "~/Land_load/Land_load_Profile_Add.aspx?type=l";
                    LoginText = "House Login";
                }
                else
                {
                    ReturnURL = "~/";
                }
            }
            IAuthorizationState authorization = facebookClient.ProcessUserAuthorization();

            try
            {

                  User user = new User();

                if (authorization == null)
                {
                    // Kick off authorization request
                    facebookClient.RequestUserAuthorization();

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
                    user.Name = string.IsNullOrEmpty(HttpUtility.HtmlEncode(oauth2Graph.Name)) ? string.Empty : HttpUtility.HtmlEncode(oauth2Graph.Name);
                    user.Email = string.IsNullOrEmpty(HttpUtility.HtmlEncode(oauth2Graph.Email)) ? string.Empty : HttpUtility.HtmlEncode(oauth2Graph.Email);
                    user.FBAccessToken = string.IsNullOrEmpty(authorization.AccessToken) ? string.Empty : authorization.AccessToken;
                    user.FBProfilePictureURL = string.IsNullOrEmpty(HttpUtility.HtmlEncode(oauth2Graph.AvatarUrl)) ? string.Empty : HttpUtility.HtmlEncode(oauth2Graph.AvatarUrl);
                    user.Gender = string.IsNullOrEmpty(HttpUtility.HtmlEncode(oauth2Graph.Gender)) ? string.Empty : HttpUtility.HtmlEncode(oauth2Graph.Gender);
                    user.IsFBUser = true;
                    user.Password = user.FBid;

                    try
                    { user.DateOfBirth = Convert.ToDateTime(HttpUtility.HtmlEncode(oauth2Graph.BirthdayDT)); }
                    catch(Exception ex) {}

                    if (user.IsExistingFbUser(user.FBid))
                    {
                        // authanticate fbuser get userneame and pwd
                        // get user from fbid (username)
                        // stringpassword = membership

                        user.UserName = user.getFBUsername(user.FBid);

                        if (user.AuthenticateUser())
                        {
                            try
                            {
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
                        Response.Redirect(ReturnURL);
                    }
                   
                }
            
            }
            catch (Exception ex)
            {
                //you will get the exception for the first time anyways
                StatusLabel.Text = "You are fucked!";
                throw ex;
            }

            //IAuthorizationState AccessToken = facebookClient.GetClientAccessToken();
            //HashSet<string> accessScope = new HashSet<string>();
            //accessScope = AccessToken.Scope;
            //string token = AccessToken.AccessToken;//This can be saved in the datebase to use later to post things.
        }
    }
}