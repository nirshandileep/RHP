using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using RHP.Comments;
using RHP.Utility;
using System.IO;
using RHP.Photos;
using RHP.Common;
using RHP.UserManagement;


namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class Landload_Public_Profile_Header : System.Web.UI.UserControl
    {

       
        protected void Page_Load(object sender, EventArgs e)
        {
            string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");
            string AccessCode2 = Utility.GetQueryStringValueByKey(Request, "AccessCode2");
            
            if (AccessCode != string.Empty && AccessCode != null)
            {
                try
                {
                    LoadComments(Guid.Parse(AccessCode));

                    if (AccessCode2 != string.Empty && AccessCode2 != null)
                    {
                        LoadImage(Guid.Parse(AccessCode),Guid.Parse(AccessCode2));
                    }
                }
                catch (Exception ex)
                { }
            }

        }


        public void LoadImage(Guid AccessCode, Guid AccessCode2)
        {
            User user = User.Select(AccessCode2);
            if (user.UserId.HasValue)
            {
                ProfileUserName.Text = user.FirstName + " " + user.LastName;
               // ProfileUserName.NavigateUrl = "~/Student/Student_Public_Profile.aspx?AccessCode=" + AccessCode2;
               
            }
            
            Photo photo = new Photo();

            imgLandloadProfileImage.ImageUrl = photo.LoadImage(AccessCode2, Enums.PhotoCategory.Profile_Picture);
            jmgHeaderImage.ImageUrl = photo.LoadImage(AccessCode2, Enums.PhotoCategory.Cover_Picture);
        }
        
        public void LoadComments(Guid AccessCode)
        {
            ASPxRating.Value = new Comment().GetOverrallFeedbackByContext(Enums.ContextType.Landlord, AccessCode);
        }
    }
}