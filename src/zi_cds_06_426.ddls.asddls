@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Agregación'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_cds_06_426
  as select from /dmo/travel
{
  key travel_id                    as TravelId,
      agency_id                    as AgencyId,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      min(total_price)             as MinTotalPrice,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      max(total_price)             as MaxTotalPrice,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      sum(total_price)             as SumTotalPrice,

      count( distinct total_price) as CountDistTotalPrice,

      count( * )                   as CountAllTotalPrice,

      currency_code                as CurrencyCode
}
group by
  travel_id,
  agency_id,
  currency_code;
