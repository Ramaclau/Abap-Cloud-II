CLASS zcl_30_laptop_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    data keyboard type REF TO zcl_29_keyborad_426.
    METHODS constructor IMPORTING io_keyboard TYPE REF TO zcl_29_keyborad_426.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS zcl_30_laptop_426 IMPLEMENTATION.
  METHOD constructor.
    me->keyboard = io_keyboard.
  ENDMETHOD.

ENDCLASS.
