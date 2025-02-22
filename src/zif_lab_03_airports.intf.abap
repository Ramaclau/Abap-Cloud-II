INTERFACE zif_lab_03_airports
  PUBLIC .

    METHODS GET_AIRPORTS IMPORTING IV_AIRPORT_ID type string
                         RETURNING VALUE(ty_airport) type /DMO/AIRPORT.
ENDINTERFACE.
