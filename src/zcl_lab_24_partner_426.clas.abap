CLASS zcl_lab_24_partner_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS GET_COMPANY_CAPITAL RETURNING VALUE(rv_capital) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_24_partner_426 IMPLEMENTATION.
  METHOD get_company_capital.
    data(lo_comp) = NEW zcl_lab_23_company_426(  ).
    lo_comp->capital = '1'.
  ENDMETHOD.

ENDCLASS.
