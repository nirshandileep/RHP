using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.Facebook;
using DotNetOpenAuth.OAuth2;

namespace USA_Rent_House_Project
{
    public partial class Facebook_Login : System.Web.UI.Page
    {
        private static string facebookAppID = "1442754675988252";
        private static string facebookAppSecret = "f7c55471278a90514530f0e4806976ec";

        private static readonly FBClient facebookClient = new FBClient
        {
            ClientIdentifier = facebookAppID,
            ClientCredentialApplicator = ClientCredentialApplicator.PostParameter(facebookAppSecret),
        };


        protected void Page_Load(object sender, EventArgs e)
        {

            IAuthorizationState authorization = facebookClient.ProcessUserAuthorization();

            try
            {


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

                    string name = HttpUtility.HtmlEncode(oauth2Graph.Name);
                    string DOB = HttpUtility.HtmlEncode(oauth2Graph.BirthdayDT);
                    string email = HttpUtility.HtmlEncode(oauth2Graph.Email);

                    StatusLabel.Text += name + "<br />";
                    StatusLabel.Text += DOB + ",<br />";
                    StatusLabel.Text += email;

                    //Todo: Register the user here if not an existing member.
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