CLASS zcl_lab_19_lion_426 DEFINITION INHERITING FROM zcl_lab_18_animal_426
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS walk REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_19_LION_426 IMPLEMENTATION.


  METHOD walk.
    rv_walk = 'The lion walks'.
  ENDMETHOD.
ENDCLASS.
