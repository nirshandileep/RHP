﻿using System;
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
    }
}
