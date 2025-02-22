CLASS zcl_15_screen_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: zif_02_eu_unit_426,
               zif_03_en_unit_426.

    METHODS constructor IMPORTING iv_en_unit type zfloat.

  PROTECTED SECTION.
  PRIVATE SECTION.
    data en_unit type zfloat.
ENDCLASS.



CLASS ZCL_15_SCREEN_426 IMPLEMENTATION.


  METHOD constructor.
    me->en_unit = iv_en_unit.
  ENDMETHOD.


  METHOD zif_02_eu_unit_426~dimensions_centimeters.
    rv_unit = me->en_unit * '2.54'.
  ENDMETHOD.


  METHOD zif_03_en_unit_426~dimensions_inches.
    rv_unit = me->en_unit.
  ENDMETHOD.
ENDCLASS.
