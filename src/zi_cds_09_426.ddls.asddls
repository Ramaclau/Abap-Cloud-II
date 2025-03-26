@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Conversión Cantidades'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_cds_09_426
  as select from zqty_426
{
  key product                                     as Product,
      @Semantics.quantity.unitOfMeasure: 'OriginalUnit'
      quantity                                    as OriginalQuantity,
      unit                                        as OriginalUnit,
      @Semantics.quantity.unitOfMeasure: 'ConvertedUnit'
      unit_conversion( quantity => quantity,
                      source_unit => unit,
                      target_unit => abap.unit'MI',
                      error_handling => 'SET_TO_NULL',
                      client => $session.client ) as ConvertedQty,
      abap.unit'MI'                               as ConvertedUnit
}
