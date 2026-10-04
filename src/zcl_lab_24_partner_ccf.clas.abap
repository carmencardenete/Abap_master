CLASS zcl_lab_24_partner_ccf DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   meTHODS GET_COMPANY_CAPITAL returning VALUE(rv_company) type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_24_partner_ccf IMPLEMENTATION.
  METHOD get_company_capital.
   data(lo_company) = new zcl_lab_23_company_ccf(  ).
   rv_company = lo_company->capital.
  ENDMETHOD.

ENDCLASS.
