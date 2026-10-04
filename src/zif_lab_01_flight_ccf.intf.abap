INTERFACE zif_lab_01_flight_ccf
  PUBLIC .
  INTERFACES zif_lab_03_airports_ccf.

  CLASS-DATA comp_id TYPE string.
  DATA conn_id TYPE string.
  METHODS:  get_comp RETURNING VALUE(ev_com) TYPE string,
    set_comp IMPORTING iv_com TYPE string,
    get_conn_id RETURNING VALUE(ev_conn_id) TYPE string,
    set_conn_id IMPORTING iv_conn_id TYPE string.
ENDINTERFACE.
