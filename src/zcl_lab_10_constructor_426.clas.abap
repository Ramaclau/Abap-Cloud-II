  CLASS zcl_lab_10_constructor_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor IMPORTING iv_cont TYPE string.

    METHODS get_cont RETURNING VALUE(ev_cont) TYPE string.

    CLASS-METHODS class_constructor.

    CLASS-DATA log      type string.
    CLASS-DATA currency type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA cont type string.

ENDCLASS.

CLASS zcl_lab_10_constructor_426 IMPLEMENTATION.

  METHOD constructor.

    me->cont = iv_cont.
    log = |{ log }-Instance Constructor { iv_cont }-->|.

  ENDMETHOD.

  METHOD class_constructor.

    zcl_lab_10_constructor_426=>currency = 'CLP'.
    log = |{ log }-Static Constructor-->|.

  ENDMETHOD.

  METHOD get_cont.

    ev_cont = me->cont.

  ENDMETHOD.

ENDCLASS.
