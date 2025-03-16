CLASS zcx_54_exception_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS raise_exception1 IMPORTING io_previous TYPE REF TO cx_root OPTIONAL
                             RAISING zcx_51_exception1_426.

    METHODS raise_exception2 IMPORTING io_previous TYPE REF TO cx_root OPTIONAL
                             RAISING zcx_51_exception2_426.

    METHODS raise_exception3 IMPORTING io_previous TYPE REF TO cx_root OPTIONAL
                             RAISING zcx_51_exception3_426.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcx_54_exception_426 IMPLEMENTATION.
  METHOD raise_exception1.
    raise EXCEPTION type zcx_51_exception1_426
        EXPORTING previous = io_previous.
  ENDMETHOD.

  METHOD raise_exception2.
   raise EXCEPTION type zcx_51_exception2_426
        EXPORTING previous = io_previous.
  ENDMETHOD.

  METHOD raise_exception3.
   raise EXCEPTION type zcx_51_exception3_426
        EXPORTING previous = io_previous.
  ENDMETHOD.

ENDCLASS.
