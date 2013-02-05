using System;
using System.Web.Optimization;

namespace $rootnamespace$
{
    public class BundleConfig
    {
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.IgnoreList.Clear();
            AddDefaultIgnorePatterns(bundles.IgnoreList);

            bundles.Add(
                new ScriptBundle("~/scripts/modernizr")
                    .Include("~/scripts/modernizr-{version}.js"));

            bundles.Add(
              new ScriptBundle("~/scripts/vendor")
                .Include("~/scripts/jquery-{version}.js")
                .Include("~/scripts/knockout-{version}.debug.js")
                .Include("~/scripts/sammy-{version}.js")
                .Include("~/scripts/toastr.js")
                .Include("~/scripts/Q.js")
                .Include("~/scripts/breeze.debug.js")
                .Include("~/scripts/bootstrap.js")
              );

            bundles.Add(
              new StyleBundle("~/Content/css")
                .Include("~/Content/bootstrap.css")
                .Include("~/Content/bootstrap-responsive.css")
                .Include("~/Content/toastr.css")
                .Include("~/Content/styles.css")
              );
        }

        public static void AddDefaultIgnorePatterns(IgnoreList ignoreList)
        {
            if (ignoreList == null)
            {
                throw new ArgumentNullException("ignoreList");
            }

            ignoreList.Ignore("*.intellisense.js");
            ignoreList.Ignore("*-vsdoc.js");

            //ignoreList.Ignore("*.debug.js", OptimizationMode.WhenEnabled);
            //ignoreList.Ignore("*.min.js", OptimizationMode.WhenDisabled);
            //ignoreList.Ignore("*.min.css", OptimizationMode.WhenDisabled);
        }
    }
}