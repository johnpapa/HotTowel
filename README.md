#HotTowel
##John Papa's ASP.NET SPA Template

HotTowel: Because You dont't want to go to the SPA without one!

##What is HotTowel?
HotTowel is a NuGet package that creates a great starting point for building a SPA. 

##How does it work?
Installing using Nuget into Visual Studio and then run the project!

	Install-Package HotTowel


##How do I build on this?
1. Add your own server-side code, preferably Entity Framework and WebAPI (which really shine with BreezeJS).
2. Replace the home and details view and viewmodels with your own views and viewmodels. 
3. Update the navigation routes in shell.js (search for TODO).
4. Update the startup module in shell.js (search for TODO)
5. Add code to your new viewmodels to get data
6. Add code to your new views to bind and display the data


##Besides NuGet packges, what's in it?
- index.cshtml (starter html page with script and css references)
- App/main.js (bootstrapping code)
- App/logger.js (console logging and toasts)
- App/views/shell.html (the shell view)
- App/views/nav.html (navigation)
- App/views/home.html (a sample view)
- App/views/details.html (a second sample view)
- App/viewmodels/shell.js (the shell viewmodel)
- App/viewmodels/home.js (sample viewmodel)
- App/viewmodels/details.js (sample viewmodel)
- App_Start/BundleConfig.cs (css and javascript bundles)
- App_Start/HotTowelConfig.cs (injects BundleConfig into app startup)
- Content/styles.css (simple styling)


##Also Includes NuGet Packages
Also includes several NuGet packages both directly and indirectly:

- Breeze.WebApi
- Durandal
- Durandal.Router 
- Durandal.Transitions
- jQuery 
- KnockoutJS
- Microsoft.AspNet.WebApi
- Microsoft.AspNet.Razor
- Microsoft.AspNet.Web.Optimization
- Q.js
- RequireJS
- Sammy.js
- toastr 
- Twitter.Bootstrap
- WebActivator


##Notes
##### HotTowel NuGet
This is where the NuGet package lives.

##### HotTowel folder 
Purely for testing purposes.
