CLASS zcl_41_building_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    EVENTS blocked_entrance EXPORTING value(ev_entry) type string.

    METHODS clse_entry.

    data entry TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_41_building_426 IMPLEMENTATION.
  METHOD clse_entry.
    raise EVENT blocked_entrance EXPORTING ev_entry = me->entry.
  ENDMETHOD.

ENDCLASS.
