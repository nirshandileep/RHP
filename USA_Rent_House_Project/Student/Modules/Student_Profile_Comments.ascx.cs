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
using RHP.Utility;
using RHP.Photos;


namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Student_Profile_Comments : System.Web.UI.UserControl
    {
        //private DataSet dsComments
        //{ 
          
        //    get
        //    {
        //        DataSet ds = null;
        //       ds = SessionManager.GetSession<DataSet>(Constants.SESSION_COMMENTS);

        //        if (ds == null)
        //        {
        //            ds = new CommentDAO().SelectByContext(1, Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
        //            ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["CommentId"] };
        //            Session[Constants.SESSION_COMMENTS] = ds;
        //        }

        //        return ds;
        //    }
            
        //}


        protected void Page_Load(object sender, EventArgs e)
        {
            //string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

            //if (AccessCode != string.Empty && AccessCode != null)
            //{
            //    try
            //    {
            //        LoadComments(Guid.Parse(AccessCode));
            //    }
            //    catch (Exception ex)
            //    { }
            //} 
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                LoadComments();
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }


        protected void ItemDataBound(object sender, DataListItemEventArgs e)
        {
            //Photo photo = new Photo();
            //HiddenField HiddenFieldUserId_ = (HiddenField)e.Item.FindControl("hdUserId");
            //HiddenField HiddenFieldCreatedBy_ = (HiddenField)e.Item.FindControl("hdCreatedBy"); 
            //HyperLink Image_ = (HyperLink)e.Item.FindControl("HyperLinkimage");

            //Image_.ImageUrl = photo.LoadImage(Guid.Parse(HiddenFieldCreatedBy_.Value.ToString()), Enums.PhotoCategory.Profile_Picture);
        }


        //public void LoadComments(Guid AccessCode)
        //{
        //    DataSet ds;
        //    ds = new CommentDAO().SelectByContext(1, AccessCode);
        //    ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["CommentId"] };

        //    DataListStudentComments.DataSource = ds.Tables[0];
        //    DataListStudentComments.DataBind();

        //}

        public void LoadComments()
        {
            DataSet ds = null;
            ds = new CommentDAO().SelectByContext(1, Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
            ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["CommentId"] };

            DataListStudentComments.DataSource = ds.Tables[0];
            DataListStudentComments.DataBind();

        }
    }
}