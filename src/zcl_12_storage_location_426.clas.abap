CLASS zcl_12_storage_location_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC GLOBAL FRIENDS zcl_11_planr_426.

  PUBLIC SECTION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    data product TYPE string.
    METHODS set_product IMPORTING iv_product TYPE string.
ENDCLASS.

CLASS zcl_12_storage_location_426 IMPLEMENTATION.
  METHOD set_product.

    product = iv_product.

  ENDMETHOD.

ENDCLASS.
