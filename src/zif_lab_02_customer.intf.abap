INTERFACE zif_lab_02_customer
  PUBLIC .
   TYPES: BEGIN OF ty_cust_address,
            first_name TYPE string,
            last_name  TYPE string,
          END OF ty_cust_address.

   METHODS get_customer IMPORTING iv_customer_id type string
                        RETURNING VALUE(rv_type_ca) type ty_cust_address.

ENDINTERFACE.
