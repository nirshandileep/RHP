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
using System.Web.Security;
using System.Data;
using RHP.Utility;
using RHP.Photos;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Comment_Add : System.Web.UI.UserControl
    {

        private User _user = new User();

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                return _user;
            }
            set
            {
                _user = value;
                Session[Constants.SESSION_LOGGED_USER] = _user;
            }
        }

        Comment comment = new Comment();

        protected void Page_Load(object sender, EventArgs e)
        {
          

        }

      
      
      

       

        protected void CommentButton_Click(object sender, EventArgs e)
        {
            
        }

        public void save(Comment comment)
        {

            try
            {
                string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

                if (AccessCode != null && AccessCode != string.Empty)
                {
                    comment.ContextId = Guid.Parse(AccessCode);
                    if (comment.Insert(comment))
                    {
                        DataSet ds;
                        ds = new CommentDAO().SelectByContext(1, Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                        ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["CommentId"] };
                        Session[Constants.SESSION_COMMENTS] = ds;

                       
                      //  Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Student/Student_Public_Profile.aspx?AccessCode='" + AccessCode + "';}", true);
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
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Unsuccess + "'); }", true);
                throw ex;
            }

        }

      

     
    }
}