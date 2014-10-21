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
                            loadimage();
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

            bool IsUpload = photo.ImageResize(FileUploads, path, photo);

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

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (FileUploadHouseImages.PostedFile.ContentLength > 6291456)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }


        protected void HouseImages_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                Photo photo = new Photo();

                string path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString();

                bool IsUpload = photo.ImageUpload(FileUploadHouseImages, path, photo);

                if (IsUpload == true)
                {
                    photo.ContextId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    photo.ContextTypeId = (int)Enums.ContextType.Student;
                    photo.PhotoCategoryId = (int)Enums.PhotoCategory.House_Life_Picture;

                    photo.Insert(photo);
                }

                loadimage();

            }
        }
            public void loadimage()
        {
            Photo photo = new Photo();
             try
                {

                    List<String> images = photo.LoadImageList(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()), Enums.PhotoCategory.House_Life_Picture);

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