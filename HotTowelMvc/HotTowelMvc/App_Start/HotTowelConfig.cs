using System;
using System.Web.Optimization;

[assembly: WebActivator.PostApplicationStartMethod(
    typeof(HotTowelMvc.App_Start.HotTowelConfig), "PreStart")]
//    typeof($rootnamespace$.App_Start.HotTowelConfig), "PreStart")]

namespace HotTowelMvc.App_Start
//namespace $rootnamespace$.App_Start
{
    public static class HotTowelConfig
    {
        public static void PreStart()
        {
            // Add your start logic here
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}