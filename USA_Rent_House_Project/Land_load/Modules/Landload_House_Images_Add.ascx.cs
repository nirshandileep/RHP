using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.IO;
using RHP.Common;
using RHP.Photos;
using RHP.Utility;

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class Landload_House_Images_Add : System.Web.UI.UserControl
    {
        Guid HouseId = new Guid();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");
                try
                {
                    HouseId = Guid.Parse(AccessCode);
                }
                catch (Exception ex)
                { }

                if (!IsPostBack)
                {
                        try
                        {
                            LoadImage(HouseId);
                        }
                        catch (Exception ex)
                        { }
                   
                }
            }
        }


        public void LoadImage(Guid HouseId)
        {
            Photo photo = new Photo();

            ProfileImage_.ImageUrl = photo.LoadHouseImage(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()), HouseId,Enums.ContextSubType.House, Enums.PhotoCategory.House_Picture);

        }


        protected void btn_Photos_Click(object sender, EventArgs e)
        {
            
            Photo photo = new Photo();

            string path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString();

            bool IsUpload = photo.ImageUpload(FileUploads, path, photo);

            if (IsUpload == true)
            {
                photo.ContextId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                photo.ContextSubId = HouseId; // house id
                photo.ContextTypeId = (int)Enums.ContextType.Landlord;
                photo.ContextSubTypeId = (int)Enums.ContextSubType.House;
                photo.PhotoCategoryId = (int)Enums.PhotoCategory.House_Picture;

                photo.Insert(photo);
            }



            Response.Redirect("~/Land_load/Land_load_Profile.aspx");
        }
    }
}