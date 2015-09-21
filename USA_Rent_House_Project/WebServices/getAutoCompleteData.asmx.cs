using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using RHP.StudentManagement;

namespace USA_Rent_House_Project.WebServices
{

   // httpp://localhost:63990/
    [WebService(Namespace = "www.bizcubes.com.au")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]

    public class CompsData : System.Web.Services.WebService
    {

        [System.Web.Services.WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public string[] Get_School_List(string prefixText, int count)
        {

            List<School> SchoolList;
            SchoolList = School.SelectAllList();

            List<string> slist = new List<string>();

            if (SchoolList != null)
            {
                for (int i = 0; i < SchoolList.Count; i++)
                {
                    slist.Add(SchoolList[i].Name.ToString());
                }

            }

            string[] names = (from n in slist where n.StartsWith(prefixText, StringComparison.CurrentCultureIgnoreCase) select n).Take(count).ToArray();

            return names;
        }






        ///// <summary>
        ///// Summary description for getAutoCompleteData
        ///// </summary>
        //[WebService(Namespace = "http://tempuri.org/")]
        //[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
        //[System.ComponentModel.ToolboxItem(false)]
        //// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
        //// [System.Web.Script.Services.ScriptService]
        //public class getAutoCompleteData : System.Web.Services.WebService
        //{

        //    [WebMethod]
        //    public string HelloWorld()
        //    {
        //        return "Hello World";
        //    }
        //}
    }
}
