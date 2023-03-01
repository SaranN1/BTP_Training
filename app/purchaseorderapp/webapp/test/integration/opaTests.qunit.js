sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'king/app/purchaseorderapp/test/integration/FirstJourney',
		'king/app/purchaseorderapp/test/integration/pages/POsList',
		'king/app/purchaseorderapp/test/integration/pages/POsObjectPage',
		'king/app/purchaseorderapp/test/integration/pages/POItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, POsList, POsObjectPage, POItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('king/app/purchaseorderapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePOsList: POsList,
					onThePOsObjectPage: POsObjectPage,
					onThePOItemsObjectPage: POItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);