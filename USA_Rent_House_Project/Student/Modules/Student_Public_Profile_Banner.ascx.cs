using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.Photos;
using RHP.Common;
using RHP.Utility;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Student_Public_Profile_Banner : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

            if (AccessCode != string.Empty && AccessCode != null)
            {
                try
                {
                    loadimage(Guid.Parse(AccessCode));
                }
                catch (Exception ex)
                { }
            }
        }

        public void loadimage(Guid AccessCode)
        {
            Photo photo = new Photo();
            try
            {

                List<String> images = photo.LoadImageList(AccessCode, Enums.PhotoCategory.House_Life_Picture);

                if (images != null)
                {
                    RepeaterImages.DataSource = images;
                    RepeaterImages.DataBind();

                }

            }
            catch (Exception ec)
            { }

        }

    }
}