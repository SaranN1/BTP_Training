@cds.persistence.exists 
@cds.persistence.calcview 
Entity CV_PO_ANA {
key     LIFECYCLE_STATUS: String(1)  @title: 'LIFECYCLE_STATUS: LIFECYCLE_STATUS' ; 
key     CURRENCY_CODE: String(3)  @title: 'CURRENCY_CODE: CURRENCY_CODE' ; 
        GROSS_AMOUNT: Decimal(15)  @title: 'GROSS_AMOUNT: GROSS_AMOUNT' ; 
key     BP_ID: String(32)  @title: 'BP_ID: BP_ID' ; 
key     COMPANY_NAME: String(250)  @title: 'COMPANY_NAME: COMPANY_NAME' ; 
key     CITY: String(44)  @title: 'CITY: CITY' ; 
key     COUNTRY: String(44)  @title: 'COUNTRY: COUNTRY' ; 
}