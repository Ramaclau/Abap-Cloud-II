CLASS zcl_05_plant_426 DEFINITION INHERITING FROM zcl_04_company_426
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor IMPORTING iv_quotation type string
                                  iv_product   type string.

    data product type string.
    data campany_atr type string.

    METHODS set_company_code REDEFINITION.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_05_plant_426 IMPLEMENTATION.
  METHOD constructor.

    super->constructor( iv_quotation = iv_quotation ).

    me->product = iv_product.

  ENDMETHOD.

  METHOD set_company_code.
    super->set_company_code( iv_company = iv_company ).
    me->company_code = 'AABB'.

  ENDMETHOD.

ENDCLASS.
