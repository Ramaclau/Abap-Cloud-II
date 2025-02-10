CLASS zcl_lab_21_classroom_426 DEFINITION
  PUBLIC
*  FINAL
  CREATE PROTECTED .

  PUBLIC SECTION.
    METHODS classroom RETURNING VALUE(rv_classroom) type string.

  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_21_classroom_426 IMPLEMENTATION.
  METHOD classroom.
    rv_classroom = 'Art'.
  ENDMETHOD.

ENDCLASS.
