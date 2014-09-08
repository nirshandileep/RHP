using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.IO;

namespace USA_Rent_House_Project.Modules
{
    /// <summary>
    /// Summary description for FileHandler
    /// </summary>
    public class FileHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            if (context.Request.Files.Count > 0)
            {
                HttpFileCollection files = context.Request.Files;
                foreach (string key in files)
                {
                    HttpPostedFile file = files[key];
                    string fileName = file.FileName;

                    string fileExtension = Path.GetExtension(fileName); 

                    string path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString() + "/HouseLife";

                    string imagename = Guid.NewGuid().ToString() + fileExtension;

                    fileName = Path.Combine(context.Server.MapPath(path), imagename);

                    file.SaveAs(fileName);
                }
            }
            context.Response.ContentType = "text/plain";
            context.Response.Write("File(s) uploaded successfully!");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

        //public void ProcessRequest(HttpContext context)
        //{
        //    context.Response.ContentType = "text/plain";
        //    context.Response.Write("Hello World");
        //}

        //public bool IsReusable
        //{
        //    get
        //    {
        //        return false;
        //    }
        //}
    }
}