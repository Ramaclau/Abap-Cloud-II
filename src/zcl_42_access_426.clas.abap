CLASS zcl_42_access_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor.

    METHODS on_blocked_entrance for EVENT blocked_entrance of zcl_41_building_426
                                importing ev_entry.

    class-data table_blocked_entries type TABLE OF string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_42_access_426 IMPLEMENTATION.
  METHOD on_blocked_entrance.
    APPEND |{ ev_entry } entry bloched| to table_blocked_entries.
  ENDMETHOD.

  METHOD constructor.
    set HANDLER me->on_blocked_entrance for ALL INSTANCES.
  ENDMETHOD.

ENDCLASS.
