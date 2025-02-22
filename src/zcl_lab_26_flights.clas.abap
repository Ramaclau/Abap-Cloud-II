CLASS zcl_lab_26_flights DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
      INTERFACES zif_lab_01_flight.
      INTERFACES zif_lab_02_customer.

      ALIASES set_flight   for zif_lab_01_flight~set_conn_id.
      ALIASES get_flight   for zif_lab_01_flight~get_conn_id.
      ALIASES set_customer for zif_lab_02_customer~get_customer.
  PROTECTED SECTION.
  PRIVATE SECTION.
    data conn_id type string.
ENDCLASS.



CLASS ZCL_LAB_26_FLIGHTS IMPLEMENTATION.


  METHOD zif_lab_01_flight~get_conn_id.
   ev_conn_id = me->conn_id.
  ENDMETHOD.


  METHOD zif_lab_01_flight~set_conn_id.
    me->conn_id = iv_conn_id.
  ENDMETHOD.


  METHOD zif_lab_02_customer~get_customer.

    select single from /DMO/CUSTOMER
        FIELDS first_name, last_name
        where customer_id = @iv_customer_id
        into @rv_type_ca.

  ENDMETHOD.


  METHOD zif_lab_03_airports~get_airports.
    select single from /DMO/AIRPORT
        FIELDS *
        where airport_id = @iv_airport_id
        into @ty_airport.
  ENDMETHOD.
ENDCLASS.
