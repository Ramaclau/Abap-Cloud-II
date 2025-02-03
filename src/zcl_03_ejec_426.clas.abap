CLASS zcl_03_ejec_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_03_ejec_426 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    data(lo_employee) = new zcl_03_employ_426( iv_employee_id = '01' ).

    out->write( lo_employee->get_employee( ) ).

    out->write( zcl_03_employ_426=>company ).

  ENDMETHOD.
ENDCLASS.
