CLASS zcl_lab_14_grid_426 DEFINITION INHERITING FROM zcl_lab_13_view_426
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor IMPORTING IV_BOX type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_14_grid_426 IMPLEMENTATION.


  METHOD constructor.

    super->constructor( iv_view_type = view_type ).

  ENDMETHOD.

ENDCLASS.
