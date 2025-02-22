CLASS zcl_11_planr_426 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS get_product RETURNING VALUE(rv_product) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_11_PLANR_426 IMPLEMENTATION.


  METHOD get_product.
    data(lo_storage) = NEW zcl_12_storage_location_426(  ).
    lo_storage->product = 'PC'.
    lo_storage->set_product( iv_product = 'Laptop' ).
  ENDMETHOD.
ENDCLASS.
