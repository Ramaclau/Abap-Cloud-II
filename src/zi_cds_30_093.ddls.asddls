@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'VDM – Virtual Data Model'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Search.searchable: true
@VDM.viewType: #BASIC
define view entity zi_cds_30_093
  as select from I_Currency

  association [0..*] to I_CurrencyText as _Text on _Text.Currency = $projection.Currency
{
  key Currency,

      @Search.defaultSearchElement: true
      @Search.ranking: #HIGH
      @Search.fuzzinessThreshold: 0.8
      CurrencyISOCode,
      Decimals,
      AlternativeCurrencyKey,
      IsPrimaryCurrencyForISOCrcy,

      /* Associations */
      _Text
}
