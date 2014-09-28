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
            NameValueCollection items = request.QueryString;
            if (items[name] != null)
            {
                returnValue = items[name];
            }
            
            return returnValue;
        }

        /// <summary>
        /// Gets the email addresses.
        /// </summary>
        /// <param name="emailAddressList">"," or ";" seperated list of email addresses.</param>
        /// <returns></returns>
        public static string[] SplitStrings(string delimiterList)
        {
            char[] delimiter = new char[2];
            delimiter[0] = ',';
            delimiter[1] = ';';
            string[] splitStrings = null;
            try
            {
                if (!string.IsNullOrEmpty(delimiterList))
                {
                    splitStrings = delimiterList.Split(delimiter);
                }

                return splitStrings;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
