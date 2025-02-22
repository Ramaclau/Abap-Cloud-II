INTERFACE zif_lab_01_flight
  PUBLIC .
    data comp_id type string.

    INTERFACES zif_lab_03_airports.

    METHODS: set_conn_id IMPORTING iv_conn_id type string,
             get_conn_id RETURNING VALUE(ev_conn_id) type string.
ENDINTERFACE.
