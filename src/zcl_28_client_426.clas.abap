CLASS zcl_28_client_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_credit_card IMPORTING ir_credit_card TYPE REF TO zcl_27_credit_card_426,
             get_credit_card RETURNING VALUE(rr_credit_card) TYPE REF TO zcl_27_credit_card_426.
  PROTECTED SECTION.
  PRIVATE SECTION.
    data credit_card TYPE REF TO zcl_27_credit_card_426.
ENDCLASS.

CLASS zcl_28_client_426 IMPLEMENTATION.
  METHOD set_credit_card.
    me->credit_card = ir_credit_card.
  ENDMETHOD.

  METHOD get_credit_card.
    rr_credit_card = me->credit_card.
  ENDMETHOD.

ENDCLASS.
