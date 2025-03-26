CLASS zcl_query_prov_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_rap_query_provider.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_query_prov_426 IMPLEMENTATION.

  METHOD if_rap_query_provider~select.

    DATA lt_result TYPE TABLE OF zi_cds_20_426.

    TRY.

        IF io_request->is_data_requested(  ).

          DATA(lv_top)  = io_request->get_paging(  )->get_page_size( ).
          DATA(lv_skip) = io_request->get_paging(  )->get_offset( ).

          SELECT FROM /dmo/travel
             FIELDS travel_id, agency_id, customer_id
             ORDER BY travel_id ASCENDING
             INTO TABLE @lt_result
             OFFSET @lv_skip
             UP TO @lv_top ROWS.

          IF sy-subrc EQ 0.

            io_response->set_total_number_of_records( lines( lt_result ) ).
            io_response->set_data( lt_result ).

          ENDIF.
        ENDIF.

      CATCH cx_rap_query_response_set_twic INTO DATA(lx_exc).
    ENDTRY.
  ENDMETHOD.

ENDCLASS.
