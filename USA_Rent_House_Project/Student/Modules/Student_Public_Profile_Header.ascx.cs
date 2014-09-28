using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using RHP.Comments;
using RHP.Utility;


namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Student_Public_Profile_Header : System.Web.UI.UserControl
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

            if (AccessCode != string.Empty && AccessCode != null)
            {
                try
                {
                    LoadComments(Guid.Parse(AccessCode));
                }
                catch (Exception ex)
                { }
            }

        }

        public void LoadComments(Guid AccessCode)
        {

            DataSet ds;
            ds = new CommentDAO().SelectByContext(1, AccessCode);

            if (ds != null)
            {
                decimal rate = 0;

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    rate = rate + decimal.Parse(string.IsNullOrEmpty(ds.Tables[0].Rows[i]["RatingValue"].ToString().Trim()) ? "0" : ds.Tables[0].Rows[i]["RatingValue"].ToString().Trim());
                }

                if (rate > 0)
                {
                    rate = rate / ds.Tables[0].Rows.Count;
                }
                ASPxRating.Value = rate;
            }


        }
    }
}