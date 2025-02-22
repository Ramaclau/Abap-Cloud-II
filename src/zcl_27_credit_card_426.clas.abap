CLASS zcl_27_credit_card_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_card_num IMPORTING iv_card_num TYPE string,
             get_card_num RETURNING VALUE(rv_card_num) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    data card_num TYPE string.
ENDCLASS.

CLASS zcl_27_credit_card_426 IMPLEMENTATION.
  METHOD set_card_num.
    me->card_num = iv_card_num.
  ENDMETHOD.

  METHOD get_card_num.
    rv_card_num = me->card_num.
  ENDMETHOD.

ENDCLASS.
