CLASS zcl_38_bankclient_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS on_new_transfer for EVENT new_transfer
         of zif_10_bank_426
         importing sender.

    data notification type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_38_bankclient_426 IMPLEMENTATION.
  METHOD on_new_transfer.
    me->notification = |{ sender->office }-{ cl_abap_context_info=>get_system_time(  ) }|.
  ENDMETHOD.

ENDCLASS.
