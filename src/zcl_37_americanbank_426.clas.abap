CLASS zcl_37_americanbank_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
     INTERFACES zif_10_bank_426.

     METHODS create_notification RETURNING VALUE(rv_text) type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_37_americanbank_426 IMPLEMENTATION.
  METHOD create_notification.
    rv_text = |Event raise...new transfer--{ cl_abap_context_info=>get_system_time(  ) }|.
    RAISE EVENT zif_10_bank_426~new_transfer.
  ENDMETHOD.

ENDCLASS.
