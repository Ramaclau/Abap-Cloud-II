CLASS zcl_lab_34_student_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_name IMPORTING iv_name TYPE string,
             get_name RETURNING VALUE(rv_name) type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
   data name TYPE string.
ENDCLASS.

CLASS zcl_lab_34_student_426 IMPLEMENTATION.
  METHOD get_name.
    name = me->name.
  ENDMETHOD.

  METHOD set_name.
    me->name = iv_name.
  ENDMETHOD.

ENDCLASS.
