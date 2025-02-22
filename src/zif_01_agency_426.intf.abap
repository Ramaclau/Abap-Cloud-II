INTERFACE zif_01_agency_426
  PUBLIC .
  CLASS-DATA agency_address type string.

  METHODS: set_types IMPORTING iv_types        TYPE string,
           get_types RETURNING VALUE(rv_types) TYPE string.

  CLASS-METHODS set_address IMPORTING iv_address TYPE string.

ENDINTERFACE.
