CLASS zcl_lab_05_flight_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   methods funcional importing iv_vuelo type string
         returnING value(rv_boolean) type abap_boolean.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_05_flight_ccf IMPLEMENTATION.
  METHOD funcional.
    SELECT SINGLE *
             FROM /dmo/flight
            WHERE carrier_id = @iv_vuelo
             into @data(lv_vuelo) .
    if sy-subrc eq 0.
        rv_boolean = abap_true.
     else.
        rv_boolean = abap_false.
     endif.
  ENDMETHOD.

ENDCLASS.
