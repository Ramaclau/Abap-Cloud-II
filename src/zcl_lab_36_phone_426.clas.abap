CLASS zcl_lab_36_phone_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    data sreeen_type TYPE REF TO zcl_lab_37_screen_426.
    METHODS constructor IMPORTING io_screen TYPE REF TO zcl_lab_37_screen_426.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS zcl_lab_36_phone_426 IMPLEMENTATION.
  METHOD constructor.
    me->sreeen_type = io_screen.
  ENDMETHOD.

ENDCLASS.
