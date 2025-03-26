@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asociaciones con parámetros'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_cds_14_426 
with parameters 
    pCountryCode : land1
as select from /dmo/travel as Travel

association [1..1] to zi_cds_13_426 as _Agency on _Agency.AgencyId = $projection.AgencyId
{
    key Travel.travel_id as TravelId,
    Travel.agency_id as AgencyId,
    _Agency(pCountryCode:  $parameters.pCountryCode).Name as AgencyName
}
