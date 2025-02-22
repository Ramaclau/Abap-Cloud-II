CLASS zcl_14_travel_agency_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_01_agency_426.

  PROTECTED SECTION.
  PRIVATE SECTION.
    data agency_type type string.
ENDCLASS.



CLASS ZCL_14_TRAVEL_AGENCY_426 IMPLEMENTATION.


  METHOD zif_01_agency_426~get_types.
    rv_types = me->agency_type.
  ENDMETHOD.


  METHOD zif_01_agency_426~set_address.
    zif_01_agency_426~agency_address = iv_address.
  ENDMETHOD.


  METHOD zif_01_agency_426~set_types.
    me->agency_type = iv_types.
  ENDMETHOD.
ENDCLASS.
