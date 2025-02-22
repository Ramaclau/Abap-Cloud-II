CLASS zcl_36_connection_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    data hour type zsyst_uzeit.
    data sender_user type string.

    METHODS on_time_out for EVENT time_out of zcl_35_timer_426
                        IMPORTING ev_hour
                                  sender.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_36_connection_426 IMPLEMENTATION.
  METHOD on_time_out.
    me->hour = ev_hour.
    me->sender_user = sender->user.
  ENDMETHOD.

ENDCLASS.
