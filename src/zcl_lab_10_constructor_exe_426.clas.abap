CLASS zcl_lab_10_constructor_exe_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_10_constructor_exe_426 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    out->write( zcl_lab_10_constructor_426=>log ).
    data(lo_cont1) = new zcl_lab_10_constructor_426( iv_cont = '01' ).
    out->write( zcl_lab_10_constructor_426=>log ).

    data(lo_cont2) = new zcl_lab_10_constructor_426( iv_cont = '02' ).
    out->write( zcl_lab_10_constructor_426=>log ).

  ENDMETHOD.
ENDCLASS.
