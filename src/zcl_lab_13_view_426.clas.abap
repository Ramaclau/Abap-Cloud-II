CLASS zcl_lab_13_view_426 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS constructor IMPORTING IV_VIEW_TYPE type string.

  PROTECTED SECTION.
    data: VIEW_TYPE TYPE string,
          BOX       TYPE string.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_13_view_426 IMPLEMENTATION.
  METHOD constructor.
    view_type = iv_view_type.
  ENDMETHOD.

ENDCLASS.
