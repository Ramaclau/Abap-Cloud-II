CLASS zcl_40_smpt_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    class-METHODS on_new_mail for EVENT new_mail of zcl_39_mail_426
                  importing ev_subject.

    class-data table_inbox type table of string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_40_smpt_426 IMPLEMENTATION.
  METHOD on_new_mail.
    APPEND ev_subject to table_inbox.
  ENDMETHOD.

ENDCLASS.
