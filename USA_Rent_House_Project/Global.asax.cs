using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;

namespace USA_Rent_House_Project
{
    public class Global : System.Web.HttpApplication
    {

        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup

            RegisterRoutes(RouteTable.Routes);
        }

        void RegisterRoutes(RouteCollection Routes)
        {
            //Routes.MapPageRoute("T1", "T/{DIR1}", "~/TyreRange/Default.aspx");
            //Routes.MapPageRoute("T1", "T/{DIR1}/{DIR2}", "~/T/Default.aspx");

            Routes.MapPageRoute("Home", "Home", "~/Default.aspx");
            Routes.MapPageRoute("About", "About", "~/About.aspx");
            Routes.MapPageRoute("ChangePassword", "Account/ChangePassword", "~/Account/ChangePassword.aspx");
            Routes.MapPageRoute("ChangePasswordSuccess", "Account/ChangePasswordSuccess", "~/Account/ChangePasswordSuccess.aspx");
            Routes.MapPageRoute("Login", "Account/Login", "~/Account/Login.aspx");
            Routes.MapPageRoute("Register", "Account/Register", "~/Account/Register");
        }

        void Application_End(object sender, EventArgs e)
        {
            //  Code that runs on application shutdown

        }

        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs

        }

        void Session_Start(object sender, EventArgs e)
        {
            // Code that runs when a new session is started

        }

        void Session_End(object sender, EventArgs e)
        {
            // Code that runs when a session ends. 
            // Note: The Session_End event is raised only when the sessionstate mode
            // is set to InProc in the Web.config file. If session mode is set to StateServer 
            // or SQLServer, the event is not raised.

        }

    }
}
