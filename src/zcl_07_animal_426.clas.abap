CLASS zcl_07_animal_426 DEFINITION
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS walk RETURNING VALUE(rv_wlak) type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_07_ANIMAL_426 IMPLEMENTATION.


  METHOD walk.
    rv_wlak = 'The animals walks'.
  ENDMETHOD.
ENDCLASS.
