CLASS zcl_lab_25_collaborator_ccf DEFINITION inHERITING FROM zcl_lab_24_partner_ccf
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
     metHODS capital returNING VALUE(rv_capital) type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_25_collaborator_ccf IMPLEMENTATION.
  METHOD capital.
*   rv_capital = me->get_company_capital( ).
   data(lo_company) = new zcl_lab_23_company_ccf(  ).
   rv_capital = lo_company->capital.
  ENDMETHOD.

ENDCLASS.
