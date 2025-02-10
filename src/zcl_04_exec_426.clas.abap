CLASS zcl_04_exec_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_04_exec_426 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    data(lo_company) = new zcl_04_company_426( iv_quotation = 'IQ1' ).
    data(lo_plant)   = NEW zcl_05_plant_426( iv_quotation = 'IQ2' iv_product = 'P2' ).
    data(lo_storage) = NEW zcl_06_storage_426( iv_quotation = 'IQ3' iv_product = 'P3' ).

    lo_company->set_company_code( iv_company = '1234' ).
    lo_company->set_currency( iv_currency =  'USD' ).

    lo_company->get_company_code( IMPORTING ev_company = data(lv_company) ).
    lo_company->get_currency( IMPORTING ev_currency = data(lv_currency) ).

    out->write( |Company: { lv_company }-{ lv_currency }| ).

    lo_plant->set_company_code( '2233' ).
    lo_plant->set_currency( 'EUR' ).

    lo_plant->get_company_code( IMPORTING ev_company = lv_company ).
    lo_plant->get_currency( IMPORTING ev_currency = lv_currency ).

    out->write( |Plant: { lv_company }-{ lv_currency }| ).

    lo_storage->set_company_code( '4455' ).
    lo_storage->set_currency( 'CLP' ).

    lo_storage->get_company_code( IMPORTING ev_company = lv_company ).
    lo_storage->get_currency( IMPORTING ev_currency = lv_currency ).

    out->write( |Storage: { lv_company }-{ lv_currency }| ).

***
    data(lo_animal) = NEW zcl_07_animal_426(  ).
    data(lo_lion) = NEW zcl_08_lion_426(  ).

    out->write( lo_animal->walk(  ) ).
    out->write( lo_lion->walk(  ) ).

    lo_animal = lo_lion.
    out->write( 'Narrowing Casting (Up Cast)' ).
    out->write( lo_lion->walk(  ) ).
    out->write( lo_lion->walk(  ) ).

***
    TRy.
      lo_lion ?= lo_animal.
     CATCH cx_sy_move_cast_error.
     out->write( 'Casting error.' ).
     return.
    ENDTRY.

    out->write( 'Wedining Casting (down Cast)' ).
    out->write( lo_lion->walk(  ) ).
    out->write( lo_lion->walk(  ) ).

***
    data(lo_linux) = NEW zcl_lab_12_linux_426(  ).

***
    data(lo_animal2) = NEW zcl_lab_18_animal_426(  ).
    data(lo_lion2) = NEW zcl_lab_19_lion_426(  ).

    lo_animal2 = lo_lion2.
    out->write( 'Narrowing Casting (Up Cast)' ).
    out->write( lo_animal2->walk(  ) ).
    out->write( lo_lion2->walk(  ) ).

***
***
    data(lo_animal3) = NEW zcl_07_animal_426(  ).
    data(lo_lion3) = NEW zcl_08_lion_426(  ).

    out->write( lo_animal3->walk(  ) ).
    out->write( lo_lion3->walk(  ) ).

    lo_animal3 = lo_lion3.
    out->write( 'Widening Casting (Up Cast)' ).
    out->write( lo_lion3->walk(  ) ).
    out->write( lo_lion3->walk(  ) ).

    TRy.
      lo_lion3 ?= lo_animal3.
     CATCH cx_sy_move_cast_error.
     out->write( 'Casting error.' ).
     return.
    ENDTRY.

    out->write( 'Wedining Casting (down Cast)' ).
    out->write( lo_lion3->walk(  ) ).
    out->write( lo_lion3->walk(  ) ).

**
*    data(lo_encap) = NEW zcl_lab_21_classroom_426(  ).
    data(lo_student) = new zcl_lab_22_student_426(  ).

***
    data(lo_capital) = NEW zcl_lab_24_partner_426(  ).
    out->write( lo_capital->get_company_capital( ) ).



  ENDMETHOD.
ENDCLASS.
