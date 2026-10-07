CLASS zcl_lab_29_organization_ccf DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    methods GET_LOCATION  retURNING VALUE(rv_st) type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_29_organization_ccf IMPLEMENTATION.
  METHOD get_location.
   rv_st = 'Organization'.
  ENDMETHOD.

ENDCLASS.
