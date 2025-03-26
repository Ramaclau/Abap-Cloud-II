@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Variables de sesión'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_cds_03_426
  as select from /dmo/customer
{
  key customer_id              as CustomerID,
      $session.client          as ClientField,
      $session.system_date     as SystemDate,
      $session.system_language as SystemLenguage,
      $session.user            as UserFiled,
      $session.user_date       as UserDate,
      $session.user_timezone   as UserTz
}
