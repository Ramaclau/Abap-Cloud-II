@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS para modelo Jerárquico'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_CDS_22_426 
    as select from zemployee_426
    association[0..1] to ZI_CDS_22_426 as _Manager on _Manager.Employee = $projection.Manager
{
    key employee as Employee,
    manager as Manager,
    name as Name,
    _Manager
}
