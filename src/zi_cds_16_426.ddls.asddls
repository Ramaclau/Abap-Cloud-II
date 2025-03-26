@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asociación filtrada - Path Expression'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_cds_16_426 
    as select from /dmo/travel
    association [0..*] to I_CurrencyText as _Currency on _Currency.Currency = $projection.Currency
{
    key travel_id,
    @Semantics.amount.currencyCode: 'Currency'
    total_price,
    currency_code as Currency,
    _Currency[1:Language = $session.system_language ].CurrencyName
    
}
