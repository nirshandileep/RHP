using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.SessionState;
using System.Web;

namespace RHP.SessionManager
{
    public class SessionManager : IRequiresSessionState
    {

        /// <summary>
        /// The Generic session converter
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="sessionName"></param>
        /// <returns></returns>
        public static T GetSession<T>(string sessionName) where T : new()
        {
            T entity = default(T);

            if (HttpContext.Current.Session[sessionName] != null)
            {
                entity = (T)(HttpContext.Current.Session[sessionName]);
            }

            return entity;
        }
    }
}
