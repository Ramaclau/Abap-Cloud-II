@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Conversión Importes'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_cds_08_426
  with parameters
    pFromCurrency : abap.cuky,
    pToCurrency   : abap.cuky
    
  as select from /dmo/travel
{
  key travel_id                                                  as TravelID,

      @Semantics.amount.currencyCode: 'ConvertedCurrency'
      total_price                                                as OriginalPrice,
      currency_code                                              as OriginalCurrency,

      @Semantics.amount.currencyCode: 'ConvertedCurrency'
      currency_conversion( amount => total_price,
                           source_currency => currency_code,
                           target_currency => abap.cuky'USD',
                           exchange_rate_date => begin_date,
                           client             => $session.client,
                           error_handling     => 'SET_TO_NULL' ) as ConvertedPrice,
      cast( 'USD' as abap.cuky)                                  as ConvertedCurrency

}
where
  currency_code = 'USD';
