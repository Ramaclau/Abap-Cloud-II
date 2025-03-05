CLASS zcl_45_manage_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS check_user IMPORTING iv_user type syuname
                       RAISING zcx_45_auth_426.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_45_manage_426 IMPLEMENTATION.
  METHOD check_user.
    if sy-uname eq 'CB9980008426'.
        RAISE EXCEPTION TYPE zcx_45_auth_426
          EXPORTING
            textid   = zcx_45_auth_426=>no_auth
*            previous =
            msg1     = |{ sy-uname }|
            msg2     = 'Edit contract'
*            msg3     =
*            msg4     =
        .
    else.
    ENDIF.
  ENDMETHOD.

ENDCLASS.
