using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.Comments;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;
using RHP.Utility;
using System.Web.Security;
using System.Data;

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class Landload_Profile_Comment_Add : System.Web.UI.UserControl
    {

        Comment comment = new Comment();

        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {
                    _user = new User(); // _user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
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

        protected void Page_Load(object sender, EventArgs e)
        {
            string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

            if (AccessCode != null && AccessCode != string.Empty)
            {
                try
                {
                    LoadUserData(Guid.Parse(AccessCode));
                }
                catch (Exception ex)
                {

                }
            }


        }

        public void LoadUserData(Guid AccessCode)
        {
            //  user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
            user = User.Select(AccessCode);

        }

        protected void CommentButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == true)
            {
                try
                {
                     string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

                     if (AccessCode != null && AccessCode != string.Empty)
                     {

                         if (CommentMessage.Text.Trim() != "")
                         {
                             comment.ContextId = Guid.Parse(AccessCode); //Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                             comment.CommentText = CommentMessage.Text.Trim();
                             comment.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                             comment.ContextTypeId = 2;
                             comment.RatingValue = ASPxRating.Value;

                             if (comment.Insert(comment))
                             {
                                 DataSet ds;
                                 ds = new CommentDAO().SelectByContext(2, Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                                 ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["CommentId"] };
                                 Session[Constants.SESSION_HOUSE_COMMENTS] = ds;

                                 CommentMessage.Text = "";
                                 Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Land_load/Land_load_Public_Profile.aspx?AccessCode='" + AccessCode + "';}", true);
                             }
                             else
                             {
                                 Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Unsuccess + "'); }", true);
                             }

                         }
                         else
                         {
                             Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Unsuccess + "');}", true);
                         }
                     }
                }
                catch (Exception ex)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Unsuccess + "'); }", true);
                    throw ex;
                }
            }
        }
    }
}