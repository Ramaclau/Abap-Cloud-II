CLASS zcl_43_component_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  GLOBAL FRIENDS zcl_44_comp_froends_426.

  PUBLIC SECTION.
    METHODS get_first EXPORTING es_first type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    data ms_second type ty_first.
ENDCLASS.

CLASS zcl_43_component_426 IMPLEMENTATION.
  METHOD get_first.
    data ls_first type ty_first.
    es_first = me->ms_second-comp1.

    data ls_first2 type ty_first2.
  ENDMETHOD.

ENDCLASS.
