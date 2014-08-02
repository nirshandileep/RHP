using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.SessionState;
using System.Collections.Specialized;

namespace RHP.Utility
{
    public class Utility
    {

        public static string GetQueryStringValueByKey(HttpRequest request, string name)
        {
            string returnValue = "";

            foreach (Dictionary<string, string> item in request.QueryString)
            {
                if (item.ContainsKey(name))
                {
                    returnValue = item[name];
                    break;
                }
            }
            return returnValue;
        }
    }
}
