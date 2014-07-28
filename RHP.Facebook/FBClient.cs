using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DotNetOpenAuth.OAuth2;
using System.IO;
using System.Net;
using RHP.Utility;
using RHP.Common;

namespace RHP.Facebook
{
    public class FBClient : WebServerClient 
    {
        private string facebookAppID = SystemConfig.GetValue(Enums.SystemConfig.FacebookAppID); //"1442754675988252";
        private static string facebookAppSecret = SystemConfig.GetValue(Enums.SystemConfig.FacebookAppID); //"f7c55471278a90514530f0e4806976ec";

        private static readonly AuthorizationServerDescription FacebookDescription = new AuthorizationServerDescription
        {
            TokenEndpoint = new Uri("https://graph.facebook.com/oauth/access_token"),
            AuthorizationEndpoint = new Uri("https://graph.facebook.com/oauth/authorize"),
            ProtocolVersion = ProtocolVersion.V20
        };

        public FBClient()
            : base(FacebookDescription)
        {
            ClientIdentifier = facebookAppID;
            ClientCredentialApplicator = ClientCredentialApplicator.PostParameter(facebookAppSecret);
        }

        public IOAuth2Graph GetGraph(IAuthorizationState authState, string[] fields = null)
        {
            if ((authState != null) && (authState.AccessToken != null))
            {
                string fieldsStr = (fields == null) || (fields.Length == 0) ? FBGraph.Fields.Defaults : string.Join(",", fields);

                WebRequest request = WebRequest.Create("https://graph.Facebook.com/me?access_token=" + Uri.EscapeDataString(authState.AccessToken) + "&fields=" + fieldsStr);
                WebResponse response = request.GetResponse();

                if (response != null)
                {
                    Stream responseStream = response.GetResponseStream();

                    if (responseStream != null)
                    {
                        return FBGraph.Deserialize(responseStream);
                    }
                }
            }

            return null;
        }

        /// <summary>
        /// Well-known permissions defined by Facebook.
        /// </summary>
        /// <remarks>
        /// This sample includes just a few permissions.  For a complete list of permissions please refer to:
        /// https://developers.facebook.com/docs/reference/login/
        /// </remarks>
        public static class Scopes
        {
            #region Email Permissions
            /// <summary>
            /// Provides access to the user's primary email address in the email property. Do not spam users. Your use of email must comply both with Facebook policies and with the CAN-SPAM Act.
            /// </summary>
            public const string Email = "email";
            #endregion

            #region Extended Permissions
            /// <summary>
            /// Provides access to any friend lists the user created. All user's friends are provided as part of basic data, this extended permission grants access to the lists of friends a user has created, and should only be requested if your application utilizes lists of friends.
            /// </summary>
            public const string ReadFriendlists = "read_friendlists";

            /// <summary>
            /// Provides read access to the Insights data for pages, applications, and domains the user owns.
            /// </summary>
            public const string ReadInsights = "read_insights";
            #endregion

            #region Extended Profile Properties
            /// <summary>
            /// Provides access to the "About Me" section of the profile in the about property
            /// </summary>
            public const string UserAboutMe = "user_about_me";

            /// <summary>
            /// Provides access to the user's list of activities as the activities connection
            /// </summary>
            public const string UserActivities = "user_activities";

            /// <summary>
            /// Provides access to the birthday with year as the birthday property. Note that your app may determine if a user is "old enough" to use an app by obtaining the age_range public profile property
            /// </summary>
            public const string UserBirthday = "user_birthday";

            /// <summary>
            /// Provides access to the user's hometown in the hometown property
            /// </summary>
            public const string UserHomeTown = "user_hometown";


            /// <summary>
            /// Provides access to the user's current city as the location property
            /// </summary>
            public const string UserLocation = "user_location";

            /// <summary>
            /// Provides access to the photos the user has uploaded, and photos the user has been tagged in
            /// </summary>
            public const string UserPhotos = "user_photos";

            /// <summary>
            /// Provides access to the user's family and personal relationships and relationship status
            /// </summary>
            public const string UserRelationshipStatus = "user_relationships";

            /// <summary>
            /// Provides access to the user's relationship preferences
            /// </summary>
            public const string UserRelationshipDetails = "user_relationship_details";

            /// <summary>
            /// Provides access to the user's web site URL
            /// </summary>
            public const string UserWebsite = "user_website";

            #endregion

            #region Open Graph Permissions

            /// <summary>
            /// Allows your app to publish to the Open Graph using Built-in Actions, Achievements, Scores, or Custom Actions. Your app can also publish other activity which is detailed in the Publishing Permissions doc.
            /// </summary>
            public const string PublishActions = "publish_actions";

            /// <summary>
            /// Allows you to retrieve the actions published by all applications using the built-in books actions.
            /// </summary>
            public const string UserActionBooks = "user_actions.books";

            /*There is more in https://developers.facebook.com/docs/facebook-login/permissions/v2.0#reference-opengraph*/

            #endregion

            #region Page Permissions
            #endregion

            #region Public Profile and Friend List
            #endregion
        }
    }
}
