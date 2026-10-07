CLASS zcl_lab_31_org_france_ccf DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_29_organization_ccf
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
     methods GET_LOCATION  reDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_31_org_france_ccf IMPLEMENTATION.
  METHOD get_location.
    rv_st = 'Org France'.
  ENDMETHOD.

ENDCLASS.
