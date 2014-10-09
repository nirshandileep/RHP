using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.IO;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Student_Profile_Images_Add : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                
                string path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString() + "/ProfileCover";
                loadCoverimage(path);
                string path2 = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString() + "/Profile";
                loadimage(path2);

            }
        }

        public void Saveimage(string path)
        {

            string strpath = string.Empty;

            if (FileUploads.HasFile)
            {
                // framework 4.5

                //foreach (HttpPostedFile uploadedFile in FileUploads.PostedFiles)
                //{
                //    uploadedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("~/Images/"),
                //    uploadedFile.FileName)); listofuploadedfiles.Text += String.Format("{0}<br />", uploadedFile.FileName);
                //}

                FileInfo finfo = new FileInfo(FileUploads.FileName);
                string fileExtension = finfo.Extension.ToLower();


                if (!Directory.Exists(Server.MapPath(path)))
                    Directory.CreateDirectory(Server.MapPath(path));

                //create the path to save the file to
                string imagename = Membership.GetUser().ProviderUserKey.ToString() + fileExtension;//Guid.NewGuid().ToString() + fileExtension;

                string fileName = Path.Combine(Server.MapPath(path), imagename); //FileUploads.FileName
                //save the file to our local path
                FileUploads.SaveAs(fileName);

            }
            loadimage(path);


        }

        public void loadimage(string path)
        {
            //  string path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString() + "/Profile";

            try
            {
                string[] filesindirectory = Directory.GetFiles(Server.MapPath(path));

                if (filesindirectory != null)
                {
                    List<String> images = new List<string>(filesindirectory.Count());

                    foreach (string item in filesindirectory)
                    {
                        // images.Add(String.Format("~/Images/{0}", System.IO.Path.GetFileName(item)));
                        images.Add(String.Format(path + "/{0}", System.IO.Path.GetFileName(item)));
                    }

                    RepeaterImages.DataSource = images;
                    RepeaterImages.DataBind();
                }
            }
            catch (Exception ec)
            { }
        }

        protected void btn_Photos_Click(object sender, EventArgs e)
        {
            string path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString() + "/Profile";
            Saveimage(path);
            Response.Redirect("~/Student/Student_Profile.aspx");
        }


        public void SaveCoverimage(string path)
        {

            string strpath = string.Empty;

            if (FileUploadCoverImage.HasFile)
            {
                // framework 4.5

                //foreach (HttpPostedFile uploadedFile in FileUploads.PostedFiles)
                //{
                //    uploadedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("~/Images/"),
                //    uploadedFile.FileName)); listofuploadedfiles.Text += String.Format("{0}<br />", uploadedFile.FileName);
                //}

                FileInfo finfo = new FileInfo(FileUploadCoverImage.FileName);
                string fileExtension = finfo.Extension.ToLower();


                if (!Directory.Exists(Server.MapPath(path)))
                    Directory.CreateDirectory(Server.MapPath(path));

                //create the path to save the file to
                string imagename = Membership.GetUser().ProviderUserKey.ToString() + fileExtension; //Guid.NewGuid().ToString() + fileExtension;

                string fileName = Path.Combine(Server.MapPath(path), imagename); //FileUploads.FileName
                //save the file to our local path
                FileUploadCoverImage.SaveAs(fileName);

            }
            loadCoverimage(path);


        }


        public void loadCoverimage(string path)
        {
            // string path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString() + "/Profile";

            try
            {
                string[] filesindirectory = Directory.GetFiles(Server.MapPath(path));

                if (filesindirectory != null)
                {
                    List<String> images = new List<string>(filesindirectory.Count());

                    foreach (string item in filesindirectory)
                    {
                        // images.Add(String.Format("~/Images/{0}", System.IO.Path.GetFileName(item)));
                        images.Add(String.Format(path + "/{0}", System.IO.Path.GetFileName(item)));
                    }

                    RepeaterCoverImage.DataSource = images;
                    RepeaterCoverImage.DataBind();
                }
            }
            catch (Exception ec)
            { }
        }


        protected void ButtonCoverImage_Click(object sender, EventArgs e)
        {
            string path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString() + "/ProfileCover";
            SaveCoverimage(path);

            Response.Redirect("~/Student/Student_Profile.aspx");
        }
    }
}