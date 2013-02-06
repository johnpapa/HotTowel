#HotTowel
##John Papa's ASP.NET MVC SPA Template

HotTowel: Because You don't want to go to the SPA without one!

##What is HotTowel?
Quick and easy SPA Template! HotTowel creates a great starting point for building a SPA with ASP.NET MVC, Knockout for data bindings, Durandal for navigation and UI, and Breeze for data management.

##How does it work?
Installing using Nuget into an empty ASP.NET MVC Web project using Visual Studio and then run!

	Install-Package HotTowel


##How do I build on this?
1. Add your own server-side code, preferably Entity Framework and WebAPI (which really shine with BreezeJS).
2. Edit the home and details view and viewmodels with your own views and viewmodels. 
3. Update the navigation routes in shell.js (search for TODO).
4. Update the startup module in shell.js (search for TODO)
5. Add code to your new viewmodels to get data
6. Add code to your new views to bind and display the data


##Included NuGet Packages
HotTowel includes several NuGet packages both directly and indirectly:

- Breeze.WebApi
- Durandal
- Durandal.Router 
- Durandal.Transitions
- jQuery 
- KnockoutJS
- Microsoft.AspNet.WebApi
- Microsoft.AspNet.Razor
- Microsoft.AspNet.Web.Optimization
- Moment.js
- Q.js
- RequireJS
- Sammy.js
- toastr 
- Twitter.Bootstrap
- WebActivator


##Notes
##### HotTowel NuGet
This is where the NuGet package lives.

##### HotTowelMvc folder 
Purely for testing purposes.

##### VSIX folder
Visual Studio template source code.
