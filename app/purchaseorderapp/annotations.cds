using CatalogService as service from '../../srv/CatalogService';

annotate service.POs with @(UI : {
    SelectionFields                      : [
        PO_ID,
        GROSS_AMOUNT,
        LIFECYCLE_STATUS,
        Currency_code

    ],

    LineItem                             : [
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

    HeaderInfo                           : {
        $Type          : 'UI.HeaderInfoType',
        TypeName       : 'purchase order',
        TypeNamePlural : 'purchase orders',

        Title          : {
            $Type : 'UI.DataField',
            Value : PO_ID,
        },

        Description    : {
            $Type : 'UI.DataField',
            Value : PARTNER_GUID.COMPANY_NAME,
        },
        ImageUrl       : 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Ernst_%26_Young_logo.svg/1200px-Ernst_%26_Young_logo.svg.png',
    },

    Facets                               : [
        {
            $Type  : 'UI.ReferenceFacet',
            Label  : '{i18n>POGeneralInfo}',
            Target : ![@UI.FieldGroup#HeaderGeneralInformation]
        },
        {
            $Type  : 'UI.ReferenceFacet',
            Label  : '{i18n>POItemDetails}',
            Target : 'Items/@UI.LineItem',

        }
    ],
    FieldGroup #HeaderGeneralInformation : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Value : PO_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : PARTNER_GUID_NODE_KEY,
            },
            {
                $Type : 'UI.DataField',
                Value : PARTNER_GUID.COMPANY_NAME,
            },
            {
                $Type : 'UI.DataField',
                Value : PARTNER_GUID.BP_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : GROSS_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Value : NET_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Value : TAX_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Value : Currency.code,
            },
            {
                $Type : 'UI.DataField',
                Value : LIFECYCLE_STATUS,
            },
        ]
    }

});

annotate CatalogService.POItems with @(UI : {
    LineItem                   : [
        {
            $Type : 'UI.DataField',
            Value : PO_ITEM_POS,
        },
        {
            $Type : 'UI.DataField',
            Value : PRODUCT_GUID_NODE_KEY,
        },
        {
            $Type : 'UI.DataField',
            Value : PRODUCT_GUID.PRODUCT_ID,
        },
        {
            $Type : 'UI.DataField',
            Value : GROSS_AMOUNT,
        },
        {
            $Type : 'UI.DataField',
            Value : NET_AMOUNT,
        },
        {
            $Type : 'UI.DataField',
            Value : TAX_AMOUNT,
        },
        {
            $Type : 'UI.DataField',
            Value : Currency.code,
        },
    ],

    HeaderInfo                 : {
        $Type          : 'UI.HeaderInfoType',
        TypeName       : 'PO Item',
        TypeNamePlural : 'PO Items',
        Title          : {
            $Type : 'UI.DataField',
            Value : ID,
        },
        Description    : {
            $Type : 'UI.DataField',
            Value : PO_ITEM_POS,
        },
    },

    Facets                     : [
        {
            Label  : '{i18n>lineItemHeader}',
            $Type  : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#LineItemHeader',
        },
        {
            Label  : 'Product Details',
            $Type  : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#ProductDetails',
        },
    ],

    FieldGroup #LineItemHeader : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Value : PO_ITEM_POS,
            },
            {
                $Type : 'UI.DataField',
                Value : PRODUCT_GUID_NODE_KEY,
            },
            {
                $Type : 'UI.DataField',
                Value : GROSS_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Value : TAX_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Value : NET_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Value : Currency.code,
            },
        ],
    },
    FieldGroup #ProductDetails : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Value : PRODUCT_GUID.PRODUCT_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : PRODUCT_GUID.DESCRIPTION,
            },
            {
                $Type : 'UI.DataField',
                Value : PRODUCT_GUID.TYPE_CODE,
            },
            {
                $Type : 'UI.DataField',
                Value : PRODUCT_GUID.CATEGORY,
            },
            {
                $Type : 'UI.DataField',
                Value : PRODUCT_GUID.SUPPLIER_GUID.COMPANY_NAME,
            },
            {
                $Type : 'UI.DataField',
                Value : PRODUCT_GUID.TAX_TARIF_CODE,
            },
        ],
    }
}

);
