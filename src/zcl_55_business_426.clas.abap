CLASS zcl_55_business_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS get_factorial IMPORTING iv_number    TYPE i
                          EXPORTING ev_factorial TYPE i.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_55_business_426 IMPLEMENTATION.
  METHOD get_factorial.
    CHECK iv_number gt 0.

    data(lv_number) = iv_number.

    ev_factorial = 1.
    WHILE lv_number ne 0.
        ev_factorial = ev_factorial * lv_number.

        lv_number -= 1.
    ENDWHILE.
  ENDMETHOD.

ENDCLASS.
