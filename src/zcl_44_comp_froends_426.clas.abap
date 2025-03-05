CLASS zcl_44_comp_froends_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_helper.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_44_comp_froends_426 IMPLEMENTATION.
  METHOD get_helper.
    data(lo_comp) = new zcl_43_component_426(  ).
*    data(ls_first) = lo_comp->get_first( IMPORTING es_first = data(ty_str) ).
  ENDMETHOD.

ENDCLASS.
