@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Case'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_cds_02_426 as select from /dmo/customer
{
    key customer_id as CustomerId,
    
    case country_code
      when 'US' then concat('United Syate -', concat_with_space(last_name, first_name, 2 ) )
      when 'DE' then concat('Germany - ', concat_with_space(last_name, first_name, 2 ) )
      when 'ES' then concat('Spain - ', concat_with_space(last_name, first_name, 2 ) )
      else 'Another Country Code'
    end as case1,  
   
    case 
      when country_code = 'US' or country_code = 'ES' then case title
                                                             when 'Mr.' then 'US/ES - Mr'
                                                             when 'Mrs' then 'US/ES - Mrs'
                                                             else 'US/ES - Diferent Title'
                                                           end      
      when title = 'Mr.' then last_name
      when cast( '20300101' as abap.dats ) < dats_add_days( $session.system_date, -30, 'NULL') then 'Lower'
      else 'No condition applied'
     end as Case2
       
   
   
   
}
