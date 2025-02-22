CLASS zcl_39_mail_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    class-EVENTS new_mail EXPORTING VALUE(ev_subject) type string.

    class-METHODS compose_mail.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_39_mail_426 IMPLEMENTATION.
  METHOD compose_mail.
    raise EVENT new_mail EXPORTING
                ev_subject = |ABAP programmer: { cl_abap_context_info=>get_system_time(  ) }|.
  ENDMETHOD.

ENDCLASS.
