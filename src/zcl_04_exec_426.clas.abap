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

*    data(lo_company) = new zcl_04_company_426( iv_quotation = 'IQ1' ).
*    data(lo_plant)   = NEW zcl_05_plant_426( iv_quotation = 'IQ2' iv_product = 'P2' ).
*    data(lo_storage) = NEW zcl_06_storage_426( iv_quotation = 'IQ3' iv_product = 'P3' ).
*
*    lo_company->set_company_code( iv_company = '1234' ).
*    lo_company->set_currency( iv_currency =  'USD' ).
*
*    lo_company->get_company_code( IMPORTING ev_company = data(lv_company) ).
*    lo_company->get_currency( IMPORTING ev_currency = data(lv_currency) ).
*
*    out->write( |Company: { lv_company }-{ lv_currency }| ).
*
*    lo_plant->set_company_code( '2233' ).
*    lo_plant->set_currency( 'EUR' ).
*
*    lo_plant->get_company_code( IMPORTING ev_company = lv_company ).
*    lo_plant->get_currency( IMPORTING ev_currency = lv_currency ).
*
*    out->write( |Plant: { lv_company }-{ lv_currency }| ).
*
*    lo_storage->set_company_code( '4455' ).
*    lo_storage->set_currency( 'CLP' ).
*
*    lo_storage->get_company_code( IMPORTING ev_company = lv_company ).
*    lo_storage->get_currency( IMPORTING ev_currency = lv_currency ).
*
*    out->write( |Storage: { lv_company }-{ lv_currency }| ).
*
****
*    data(lo_animal) = NEW zcl_07_animal_426(  ).
*    data(lo_lion) = NEW zcl_08_lion_426(  ).
*
*    out->write( lo_animal->walk(  ) ).
*    out->write( lo_lion->walk(  ) ).
*
*    lo_animal = lo_lion.
*    out->write( 'Narrowing Casting (Up Cast)' ).
*    out->write( lo_lion->walk(  ) ).
*    out->write( lo_lion->walk(  ) ).
*
****
*    TRy.
*      lo_lion ?= lo_animal.
*     CATCH cx_sy_move_cast_error.
*     out->write( 'Casting error.' ).
*     return.
*    ENDTRY.
*
*    out->write( 'Wedining Casting (down Cast)' ).
*    out->write( lo_lion->walk(  ) ).
*    out->write( lo_lion->walk(  ) ).
*
****
*    data(lo_linux) = NEW zcl_lab_12_linux_426(  ).
*
****
*    data(lo_animal2) = NEW zcl_lab_18_animal_426(  ).
*    data(lo_lion2) = NEW zcl_lab_19_lion_426(  ).
*
*    lo_animal2 = lo_lion2.
*    out->write( 'Narrowing Casting (Up Cast)' ).
*    out->write( lo_animal2->walk(  ) ).
*    out->write( lo_lion2->walk(  ) ).
*
****
****
*    data(lo_animal3) = NEW zcl_07_animal_426(  ).
*    data(lo_lion3) = NEW zcl_08_lion_426(  ).
*
*    out->write( lo_animal3->walk(  ) ).
*    out->write( lo_lion3->walk(  ) ).
*
*    lo_animal3 = lo_lion3.
*    out->write( 'Widening Casting (Up Cast)' ).
*    out->write( lo_lion3->walk(  ) ).
*    out->write( lo_lion3->walk(  ) ).
*
*    TRy.
*      lo_lion3 ?= lo_animal3.
*     CATCH cx_sy_move_cast_error.
*     out->write( 'Casting error.' ).
*     return.
*    ENDTRY.
*
*    out->write( 'Wedining Casting (down Cast)' ).
*    out->write( lo_lion3->walk(  ) ).
*    out->write( lo_lion3->walk(  ) ).
*
***
**    data(lo_encap) = NEW zcl_lab_21_classroom_426(  ).
*    data(lo_student) = new zcl_lab_22_student_426(  ).
*
****
*    data(lo_capital) = NEW zcl_lab_24_partner_426(  ).
*    out->write( lo_capital->get_company_capital( ) ).
****
*
*    data(lo_agency) = NEW zcl_14_travel_agency_426(  ).
*    lo_agency->zif_01_agency_426~set_types( 'Gate2Fly.com' ).
*    out->write( lo_agency->zif_01_agency_426~get_types(  ) ).
*
*    zcl_14_travel_agency_426=>zif_01_agency_426~set_address( 'Madrid, Spain' ).
****
*
*    data(lo_scr) = NEW zcl_15_screen_426( 22 ).
*    out->write( lo_scr->zif_02_eu_unit_426~dimensions_centimeters(  ) ).
*    out->write( lo_scr->zif_03_en_unit_426~dimensions_inches(  ) ).
****
*
*    data(lo_ord) = NEW zcl_16_sales_department_426(  ).
*    lo_ord->zif_04_document_426~set_sales_doc( '123D' ).
*    lo_ord->zif_05_sales_order_426~create_order( '123O' ).
****
*
*    data(lo_bp) = new zcl_17_bp_426(  ).
*    lo_bp->set_company_type(  ).
***
*    data(lo_conn) = NEW zcl_lab_26_flights(  ).
*    lo_conn->zif_lab_01_flight~set_conn_id( iv_conn_id = 'AA' ).
*    out->write( lo_conn->zif_lab_01_flight~get_conn_id(  ) ).

*    data(lo_cus) = NEW zcl_lab_26_flights(  ).
*    out->write( lo_cus->zif_lab_02_customer~get_customer( EXPORTING iv_customer_id = '000001' ) ).

*    data(lo_air) = NEW zcl_lab_26_flights(  ).
*    out->write( lo_air->zif_lab_03_airports~get_airports( iv_airport_id = 'SXF' ) ).

*    data: gt_airplanes       type STANDARD TABLE OF REF TO zcl_21_airplane_426,
*          go_air_plane       TYPE REF TO zcl_21_airplane_426,
*          go_cargo_palne     type REF TO zcl_22_cargoplane_426,
*          go_passenger_plane type REF TO zcl_23_passenger_plane_426.
*
*    go_cargo_palne = NEW #(  ).
*    append go_cargo_palne to gt_airplanes.
*
*    go_passenger_plane = NEW #(  ).
*    APPEND go_passenger_plane to gt_airplanes.
*
*    loop at gt_airplanes into go_air_plane.
*        out->write( go_air_plane->airplane_type(  ) ).
*    ENDLOOP.
****
*
*    data: gt_co_company  TYPE STANDARD TABLE OF REF TO zif_08_company_426,
*          go_co_company  TYPE REF TO zif_08_company_426,
*          go_campany_eu  TYPE REF TO zcl_24_company_eu_426,
*          go_campany_usa TYPE REF TO zcl_25_company_usa_426,
*          go_plant       TYPE REF TO zcl_26_plant_426.
*
*    go_campany_eu = NEW #(  ).
*    APPEND go_campany_eu to gt_co_company.
*
*    go_campany_usa = NEW #(  ).
*    APPEND go_campany_usa to gt_co_company.
*
*    go_plant = NEW #(  ).
*
*    LOOP AT gt_co_company into go_co_company.
*        out->write( go_plant->assign_company( go_co_company ) ).
*    ENDLOOP.
***
*    data(lo_credit_card) = NEW zcl_27_credit_card_426(  ).
*    data(lo_client)      = NEW zcl_28_client_426(  ).
*
*    lo_credit_card->set_card_num( '1113 2223 3333 4444' ).
*
*    lo_client->set_credit_card( lo_credit_card ).
*    out->write( lo_client->get_credit_card(  )->get_card_num(  ) ).
****
*    data(lo_keyboard) = NEW zcl_29_keyborad_426(  ).
*    data(lo_laptop)   = NEW zcl_30_laptop_426( lo_keyboard ).
*
*    lo_keyboard->keyboard_type = 'ES'.
*    out->write( lo_laptop->keyboard->keyboard_type ).
****
*    data(lo_vat_indicator_1) = NEW zcl_31_indicador_426(  ).
*    data(lo_vat_indicator_2) = NEW zcl_31_indicador_426(  ).
*    data(lo_vat_indicator_3) = NEW zcl_31_indicador_426(  ).
*
*    lo_vat_indicator_1->vat_ind = 'A1'.
*    lo_vat_indicator_2->vat_ind = 'A2'.
*    lo_vat_indicator_3->vat_ind = 'A3'.
*
*    out->write( lo_vat_indicator_1->vat_ind ).
*    out->write( lo_vat_indicator_2->vat_ind ).
*    out->write( lo_vat_indicator_3->vat_ind ).
***
*    data go_object type REF TO object.
*
*    go_object = NEW zcl_34_product__426(  ).
*
*    data(lv_method_name) = 'RETURN_CATEGORY'.
*
*    data lv_category type string.
*
*    call METHOD go_object->(lv_method_name) RECEIVING rv_category = lv_category.
*
*    out->write( lv_category ).
****

*    data: gt_location  type STANDARD TABLE OF REF TO zcl_lab_29_organization_426,
*          go_location  TYPE REF TO zcl_lab_29_organization_426,
*          go_germany   type REF TO zcl_lab_30_org_germany_426,
*          go_france    type REF TO zcl_lab_31_org_france_426.
*
*    go_germany = NEW #(  ).
*    append go_germany to gt_location.
*
*    go_france = NEW #(  ).
*    APPEND go_france to gt_location.
*
*    loop at gt_location into go_location.
*        out->write( go_location->get_location(  ) ).
*    ENDLOOP.
***
*    data: gt_emp  type STANDARD TABLE OF REF TO zif_lab_04_employee_426,
*          go_emp  TYPE REF TO zif_lab_04_employee_426,
*          go_int   type REF TO zcl_lab_32_internal_empl_426,
*          go_ext    type REF TO zcl_lab_33_expatriate_empl_426.
*
*    go_int = NEW #(  ).
*    append go_int to gt_emp.
*
*    go_ext = NEW #(  ).
*    APPEND go_ext to gt_emp.
*
*    loop at gt_emp into go_emp.
*        out->write( go_emp->get_employees_count(  ) ).
*    ENDLOOP.
***
*    data(lo_screen) = NEW zcl_lab_37_screen_426(  ).
*    data(lo_phone)  = NEW zcl_lab_36_phone_426( lo_screen ).
*
*    lo_screen->screen_type = 'LED'.
*    out->write( lo_phone->sreeen_type->screen_type ).
***
*    data(lo_price_1) = NEW zcl_lab_38_prod_price_426(  ).
*    data(lo_price_2) = NEW zcl_lab_38_prod_price_426(  ).
*
*    lo_price_1->price = '100'.
*    lo_price_2->price = '200'.
*
*    out->write( lo_price_1->price ).
*    out->write( lo_price_2->price ).
***
*    data(go_timer) = NEW zcl_35_timer_426(  ).
*    data(go_conn)  = NEW zcl_36_connection_426(  ).
*
*    set HANDLER go_conn->on_time_out for go_timer.
*
*    do.
*        wait up to 1 seconds.
*        go_timer->increment_counter( 1 ).
*
*        if go_conn->hour is INITIAL.
*            out->write( |Event not yet execute: { cl_abap_context_info=>get_system_time(  ) }| ).
*        ELSE.
*            out->write( |Event was raise at: { go_conn->hour }-{ go_conn->sender_user }| ).
*            exit.
*        ENDIF.
*    ENDDO.
***
*    data(go_ambank)  = NEW zcl_37_americanbank_426(  ).
*    data(go_bankcli) = NEW zcl_38_bankclient_426(  ).
*
*    set HANDLER go_bankcli->on_new_transfer FOR go_ambank.
*
*    do 5 TIMES.
*        wait up to 1 seconds.
*        out->write( go_ambank->create_notification(  ) ).
*        out->write( go_bankcli->notification ).
*        if sy-index eq 3.
*            set HANDLER go_bankcli->on_new_transfer FOR go_ambank ACTIVATION abap_false.
*            go_bankcli->notification = 'No handler for event'.
*        ENDIF.
*
*    ENDDO.
***
    SET HANDLER zcl_40_smpt_426=>on_new_mail.

    DO 3 TIMES.
      wait up to 1 seconds.
      zcl_39_mail_426=>compose_mail(  ).
    ENDDO.

    out->write( zcl_40_smpt_426=>table_inbox ).

  ENDMETHOD.
ENDCLASS.
