CLASS zcl_13_ny_plant_426 DEFINITION INHERITING FROM zcl_11_planr_426
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS get_product_sl.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_13_ny_plant_426 IMPLEMENTATION.
  METHOD get_product_sl.
    data(lo_storage) = NEW zcl_12_storage_location_426(  ).
    lo_storage->product = 'PC'.

  ENDMETHOD.

ENDCLASS.
