CLASS zcl_lab_43_navigation DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    data: pos type i,
          log type string.


    METHODS ON_TOUCH_SCREEN for EVENT TOUCH_SCREEN of zcl_lab_42_screen
                        IMPORTING ev_pos.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_43_navigation IMPLEMENTATION.
  METHOD on_touch_screen.
    me->pos = ev_pos.
    me->log = 'H10 V15'.
  ENDMETHOD.

ENDCLASS.
