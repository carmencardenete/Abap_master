CLASS zcl_lab_26_flights_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_lab_01_flight_ccf .
    INTERFACES zif_lab_02_customer_ccf .
    ALIASES get_airports FOR zif_lab_03_airports_ccf~get_airports.
    ALIASES get_comp FOR zif_lab_01_flight_ccf~get_comp.
    ALIASES set_conn_id FOR zif_lab_01_flight_ccf~set_conn_id.
    ALIASES get_conn_id FOR zif_lab_01_flight_ccf~get_conn_id.
    ALIASES set_comp FOR zif_lab_01_flight_ccf~set_comp.
    ALIASES get_customer FOR zif_lab_02_customer_ccf~get_customer.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_26_flights_ccf IMPLEMENTATION.
  METHOD zif_lab_01_flight_ccf~get_comp.
    ev_com = zif_lab_01_flight_ccf~comp_id.
  ENDMETHOD.
  METHOD zif_lab_01_flight_ccf~get_conn_id.
    ev_conn_id = zif_lab_01_flight_ccf~conn_id.
  ENDMETHOD.
  METHOD zif_lab_01_flight_ccf~set_comp.
    zif_lab_01_flight_ccf~comp_id = iv_com.
  ENDMETHOD.
  METHOD zif_lab_01_flight_ccf~set_conn_id.
    zif_lab_01_flight_ccf~conn_id = iv_conn_id.
  ENDMETHOD.
  METHOD zif_lab_02_customer_ccf~get_customer.
    SELECT SINGLE FROM /dmo/customer
  FIELDS first_name,
         last_name
   WHERE customer_id = @iv_customer_id
    INTO @rv_addres.
  ENDMETHOD.
  METHOD zif_lab_03_airports_ccf~get_airports.
    SELECT SINGLE FROM  /dmo/airport
FIELDS *
WHERE airport_id = @iv_airport_id
INTO @rv_airport.
  ENDMETHOD.

ENDCLASS.
