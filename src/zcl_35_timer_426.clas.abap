CLASS zcl_35_timer_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    EVENTS time_out EXPORTING value(ev_hour) type zsyst_uzeit.

    METHODS constructor.

    METHODS: increment_counter IMPORTING iv_counter TYPE i,
             check_limit.

    data user type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    data counter TYPE i.
ENDCLASS.

CLASS zcl_35_timer_426 IMPLEMENTATION.
  METHOD check_limit.
    if counter GE 5.
        RAISE EVENT time_out EXPORTING ev_hour = cl_abap_context_info=>get_system_time(  ).
    ENDIF.
  ENDMETHOD.

  METHOD increment_counter.
    me->counter += iv_counter.
    me->check_limit(  ).
  ENDMETHOD.

  METHOD constructor.
    me->user = sy-uname.
  ENDMETHOD.

ENDCLASS.
