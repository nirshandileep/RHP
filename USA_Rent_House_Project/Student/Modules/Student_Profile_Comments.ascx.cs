using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using RHP.SessionManager;
using RHP.Common;
using RHP.Comments;
using System.Web.Security;


namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Student_Profile_Comments : System.Web.UI.UserControl
    {
        private DataSet dsComments
        {
            get
            {
                DataSet ds;
                ds = SessionManager.GetSession<DataSet>(Constants.SESSION_COMMENTS);

                if (ds == null)
                {
                    ds = new CommentDAO().SelectByContext(1, Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                    ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["CommentId"] };
                    Session[Constants.SESSION_COMMENTS] = ds;
                }

                return ds;
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            LoadComments();
        }

        public void LoadComments()
        {

            DataListStudentComments.DataSource = dsComments.Tables[0];
            DataListStudentComments.DataBind();
              
        }
    }
}