CLASS zcl_26_plant_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS assign_company IMPORTING co_company type REF TO zif_08_company_426
                           RETURNING VALUE(rv_plant) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_26_PLANT_426 IMPLEMENTATION.


  METHOD assign_company.
    rv_plant = |Plant was assigned to...{ co_company->define_company(  ) }|.
  ENDMETHOD.
ENDCLASS.
