sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'king.app.purchaseorderapp',
            componentId: 'POsObjectPage',
            entitySet: 'POs'
        },
        CustomPageDefinitions
    );
});