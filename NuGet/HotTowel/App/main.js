require.config({
    paths: { "text": "durandal/amd/text" }
});

define(['durandal/app', 'durandal/viewLocator', 'durandal/system', 'durandal/plugins/router', 'logger'],
    function (app, viewLocator, system, router, logger) {

    // Enable debug message to show in the console 
    system.debug(true);

    app.start().then(function () {
        toastr.options.positionClass = 'toast-bottom-right';
        toastr.options.backgroundpositionClass = 'toast-bottom-right';
        customizeConventions();
        // Adapt to touch devices
        app.adaptToDevice();
        //Show the app by setting the root view model for our application.
        
        app.setRoot('viewmodels/shell', 'entrance');
    });

    function customizeConventions() {
        router.handleInvalidRoute = function (route, params) {
            logger.logError('No Route Found', route, 'main', true);
        };

        // When finding a viewmodel module, replace the viewmodel string 
        // with view to find it partner view.
        router.useConvention();
        viewLocator.useConvention();

        // Specify a view to always be in the views folder
        viewLocator.convertViewUrlToAreaUrl = function (area, viewUrl) {
            return 'views/' + viewUrl;
        };
    }
});