using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.IO;
using Image = System.Drawing.Image;
using System.Web.Security;

namespace USA_Rent_House_Project.Student
{
    public partial class Student_Profile_Image_Crop : System.Web.UI.Page
    {
        protected void page_init(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                if (!IsPostBack)
                {
                    // imgcrop.Src = "/uploads/" + Membership.GetUser().ProviderUserKey.ToString() + "/ProfileCover/" + Membership.GetUser().ProviderUserKey.ToString() + ".jpg";
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                if(!IsPostBack)
                {
                   // imgcrop.Src = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString() + "/ProfileCover/" + Membership.GetUser().ProviderUserKey.ToString() + ".jpg";
                }
            }
        }

        protected void btncrop_Click(object sender, EventArgs e)
        {
            string path = "";

            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                 path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString() + "/ProfileCover";
            }
            try
            {
                string fname = Membership.GetUser().ProviderUserKey.ToString() + ".jpg";
                string fpath = Path.Combine(Server.MapPath(path), fname);
                Image oimg = Image.FromFile(fpath);
                Rectangle cropcords = new Rectangle(
                Convert.ToInt32(hdnx.Value),
                Convert.ToInt32(hdny.Value),
                Convert.ToInt32(hdnw.Value),
                Convert.ToInt32(hdnh.Value));
                string cfname, cfpath;
                Bitmap bitMap = new Bitmap(cropcords.Width, cropcords.Height, oimg.PixelFormat);
                Graphics grph = Graphics.FromImage(bitMap);
                grph.DrawImage(oimg, new Rectangle(0, 0, bitMap.Width, bitMap.Height), cropcords, GraphicsUnit.Pixel);
                cfname = "c"+fname;
                cfpath = Path.Combine(Server.MapPath(path), cfname);
                bitMap.Save(cfpath);
                imgcropped.Visible = true;
                imgcropped.Src = path + "/"+cfname;
               // imgcrop.Src = path + "/" + cfname;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}