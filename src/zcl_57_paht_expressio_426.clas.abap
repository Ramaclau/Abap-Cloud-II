CLASS zcl_57_paht_expressio_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_57_paht_expressio_426 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    SELECT FROM zi_cds_19_426 AS Booking
        FIELDS Booking~CarrierId,
               Booking~BookingId,
               Booking~TravelId,
               \_Travel-AgencyId,
               \_Travel\_Agency-name AS AgencyName,
               concat_with_space( \_Travel\_Customer-first_name, \_Travel\_Customer-last_name, 1 ) AS CustomerName
        WHERE Booking~CarrierId EQ 'AA'
        INTO TABLE @DATA(lt_result).

    IF sy-subrc EQ 0.
      out->write( lt_result ).
    ENDIF.
  ENDMETHOD.

ENDCLASS.
