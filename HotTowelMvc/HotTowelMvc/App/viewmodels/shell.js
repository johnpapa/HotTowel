define(['durandal/system', 'durandal/plugins/router', 'logger'],
    function (system, router, logger) {
 	
        var adminRoutes = ko.computed(function () {
            return router.allRoutes().filter(function (r) {
                return r.settings.admin;
            });
        });

        var shell = {
            activate: activate,
            adminRoutes: adminRoutes,
            router: router
        };
        
        return shell;

        //#region Internal Methods
        function activate() {
            return boot();
        }

        function boot() {
            // TODO: map routes here
            var routes = [
                { url: 'home', moduleId: 'viewmodels/home', name: 'Home', visible: true },
                { url: 'details', moduleId: 'viewmodels/details', name: 'Details', visible: true }
            ];
            router.map(routes);
            log('HotTowel SPA Loaded!', null, true);
            //TODO: set your default startup route here
            return router.activate('home');
        }

        function log(msg, data, showToast) {
            logger.log(msg, data, system.getModuleId(shell), showToast);
        }
        //#endregion
    });