CLASS zcx_45_auth_426 DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_t100_message .
    INTERFACES if_t100_dyn_msg .

  constants:
    begin of no_auth,
      msgid type symsgid value 'ZMC_426',
      msgno type symsgno value '001',
      attr1 type scx_attrname value 'MV_MSG1',
      attr2 type scx_attrname value 'MV_MSG2',
      attr3 type scx_attrname value 'MV_MSG3',
      attr4 type scx_attrname value 'MV_MSG4',
    end of NO_AUTH.

  constants:
    begin of no_resource,
      msgid type symsgid value 'ZMC_426',
      msgno type symsgno value '002',
      attr1 type scx_attrname value 'MV_MSG1',
      attr2 type scx_attrname value 'MV_MSG2',
      attr3 type scx_attrname value 'MV_MSG3',
      attr4 type scx_attrname value 'MV_MSG4',
    end of NO_resource.

    data: mv_msg1 type string,
          mv_msg2 type string,
          mv_msg3 type string,
          mv_msg4 type string.

    METHODS constructor
      IMPORTING
        !textid   LIKE if_t100_message=>t100key OPTIONAL
        !previous LIKE previous OPTIONAL
        msg1 type string OPTIONAL
        msg2 type string OPTIONAL
        msg3 type string OPTIONAL
        msg4 type string OPTIONAL.



  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcx_45_auth_426 IMPLEMENTATION.


  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    CALL METHOD super->constructor
      EXPORTING
        previous = previous.
    CLEAR me->textid.
    IF textid IS INITIAL.
      if_t100_message~t100key = if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.

    me->mv_msg1 = msg1.
    me->mv_msg2 = msg2.
    me->mv_msg3 = msg3.
    me->mv_msg4 = msg4.


  ENDMETHOD.
ENDCLASS.
