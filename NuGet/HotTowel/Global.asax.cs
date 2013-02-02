using System;
using System.Web.Http;
using System.Web.Optimization;

namespace $rootnamespace$
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}