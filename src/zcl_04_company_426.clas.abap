CLASS zcl_04_company_426 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: set_company_code IMPORTING iv_company TYPE string,
             get_company_code EXPORTING ev_company TYPE string,

             set_currency IMPORTING iv_currency TYPE string,
             get_currency EXPORTING ev_currency TYPE string.

    METHODS constructor IMPORTING iv_quotation type string.

    data quotation type string READ-ONLY.

  PROTECTED SECTION.
    data: company_code TYPE c LENGTH 4,
          currency     type c LENGTH 3.
  PRIVATE SECTION.
    data campany_atr type string.
ENDCLASS.



CLASS ZCL_04_COMPANY_426 IMPLEMENTATION.


  METHOD constructor.
    me->quotation = iv_quotation.
  ENDMETHOD.


  METHOD get_company_code.
    ev_company = me->company_code.
  ENDMETHOD.


  METHOD get_currency.
    ev_currency = me->currency.
  ENDMETHOD.


  METHOD set_company_code.
    me->company_code = iv_company.
  ENDMETHOD.


  METHOD set_currency.
    me->currency = iv_currency.
  ENDMETHOD.
ENDCLASS.
