CLASS zcl_03_employ_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor IMPORTING iv_employee_id type string.

    CLASS-METHODS class_constructor.

    METHODS get_employee RETURNING VALUE(rv_employee_id) type string.

    CLASS-DATA company TYPE string READ-ONLY.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA employee_id type string.

ENDCLASS.



CLASS ZCL_03_EMPLOY_426 IMPLEMENTATION.


  METHOD class_constructor.

    zcl_03_employ_426=>company = 'Logali'.

  ENDMETHOD.


  METHOD constructor.

    me->employee_id = iv_employee_id.

  ENDMETHOD.


  METHOD get_employee.

    rv_employee_id = me->employee_id.

  ENDMETHOD.
ENDCLASS.
