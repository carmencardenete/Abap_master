INTERFACE zif_lab_02_customer_ccf
  PUBLIC .
  TYPES: BEGIN OF ty_cust_address,
           first_name TYPE string,
           last_name  TYPE string,
         END OF ty_CUST_ADDRESS.

  METHODS   get_customer IMPORTING iv_customer_id   TYPE string
                         RETURNING VALUE(rv_addres) TYPE ty_cust_address.

ENDINTERFACE.
