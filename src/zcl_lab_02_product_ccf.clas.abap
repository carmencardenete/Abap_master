CLASS zcl_lab_02_product_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  metHODS: SET_PRODUCT importING iv_product type matnr,
         SET_CREATIONDATE importing iv_date type zdate.

  PROTECTED SECTION.
  PRIVATE SECTION.
   data: PRODUCT type MATNR,
         CREATION_DATE type ZDATE .
ENDCLASS.



CLASS zcl_lab_02_product_ccf IMPLEMENTATION.
  METHOD set_creationdate.
   CREATION_DATE = iv_date.
  ENDMETHOD.

  METHOD set_product.
   product = iv_product.
  ENDMETHOD.

ENDCLASS.
