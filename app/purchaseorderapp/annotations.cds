using CatalogService as service from '../../srv/CatalogService';

annotate service.POs with @(UI : {
    SelectionFields : [
        PO_ID,
        GROSS_AMOUNT,
        LIFECYCLE_STATUS,
        Currency_code

    ],

    LineItem        : [
        {
            $Type : 'UI.DataField',
            Value : PO_ID,
        },
        {
            $Type : 'UI.DataField',
            Value : GROSS_AMOUNT,
        },
        {
            $Type : 'UI.DataField',
            Value : PARTNER_GUID.COMPANY_NAME,
        },
        {
            $Type : 'UI.DataField',
            Value : PARTNER_GUID.ADDRESS_GUID.COUNTRY,
        },
        {
            $Type  : 'UI.DataFieldForAction',
            Label  : 'Boost',
            Action : 'CatalogService.boost',
            Inline : true
        },
        {
            $Type : 'UI.DataField',
            Value : TAX_AMOUNT,
        },
        {
            $Type : 'UI.DataField',
            Value : LIFECYCLE_STATUS,
        },
        {
            $Type                     : 'UI.DataField',
            Value                     : LIFECYCLE_STATUS,
            Criticality               : MyCriticality,
            CriticalityRepresentation : #WithIcon,
        }

    ],

    HeaderInfo      : {
        $Type          : 'UI.HeaderInfoType',
        TypeName       : 'purchase order',
        TypeNamePlural : 'purchase orders',
    },
});
