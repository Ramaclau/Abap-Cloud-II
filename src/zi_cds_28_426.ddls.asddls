@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Proyección – Contrato Trans Query'
define root view entity ZI_CDS_28_426 
    provider contract transactional_query
    as projection on ZI_CDS_24_426
{
    key TravelId,
    AgencyId,
    CustomerId,
    BeginDate,
    EndDate,
    BookingFee,
    TotalPrice,
    CurrencyCode,
    Description,
    Status,
    Createdby,
    Createdat,
    Lastchangedby,
    Lastchangedat,
    /* Associations */
    _Agency,
    _Booking : redirected to composition child ZI_CDS_29_426,
    _Customer
}
