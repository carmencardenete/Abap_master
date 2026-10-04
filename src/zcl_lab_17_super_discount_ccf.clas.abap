CLASS zcl_lab_17_super_discount_ccf DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_15_flight_price_ccf
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS add_price REDEFINITION .
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA d_count   TYPE p LENGTH 8 DECIMALS 2 VALUE '0.20'.
ENDCLASS.



CLASS zcl_lab_17_super_discount_ccf IMPLEMENTATION.
  METHOD add_price.
    DATA(lv_flights) = iv_flight.
    lv_flights-price = iv_flight-price - ( iv_flight-price * d_count  ) .
    APPEND lv_flights TO me->mt_flights.
  ENDMETHOD.

ENDCLASS.
