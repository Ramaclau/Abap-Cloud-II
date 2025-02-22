CLASS zcl_lab_33_expatriate_empl_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_04_employee_426 .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_33_expatriate_empl_426 IMPLEMENTATION.
  METHOD zif_lab_04_employee_426~get_employees_count.
    rv_num_emp = '222'.
  ENDMETHOD.
ENDCLASS.
