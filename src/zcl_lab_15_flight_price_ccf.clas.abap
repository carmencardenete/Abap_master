CLASS zcl_lab_15_flight_price_ccf DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
   data MT_FLIGHTS type table of /DMO/FLIGHT.
   metHODS ADD_PRICE imporTING iv_flight type  /DMO/FLIGHT.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_15_flight_price_ccf IMPLEMENTATION.
  METHOD add_price.
    APPEND iv_flight to me->mt_flights.
  ENDMETHOD.

ENDCLASS.
