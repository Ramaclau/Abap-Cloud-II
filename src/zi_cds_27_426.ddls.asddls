@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Proyección Contrato Transac Int Child'
define view entity ZI_CDS_27_426     
    as projection on ZI_CDS_25_426
{
    key TravelId,
    key BookingId,
    BookingDate,
    CustomerId,
    CarrierId,
    ConnectionId,
    FlightDate,
    FlightPrice,
    CurrencyCode,
    /* Associations */
    _Travel: redirected to parent ZI_CDS_26_426
}
