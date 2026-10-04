CLASS zcl_lab_03_contract_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   data CNTR_TYPE(2) type c .
   clasS-DATA static type string.
   methods SET_CREATION_DATE importing iv_date type zdate.
   methods SET_static importing iv_static type string.
  PROTECTED SECTION.
    data  CREATION_DATE type ZDATE.
  PRIVATE SECTION.
    data  CLIENT type string.
ENDCLASS.



CLASS zcl_lab_03_contract_ccf IMPLEMENTATION.
  METHOD set_creation_date.
    CREATION_DATE = iv_date.
  ENDMETHOD.

  METHOD set_static.
   static = iv_static.
  ENDMETHOD.

ENDCLASS.
