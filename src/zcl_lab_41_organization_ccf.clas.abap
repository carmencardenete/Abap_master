CLASS zcl_lab_41_organization_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS set_headquarters IMPORTING iv_head TYPE string.
    METHODS get_headquarters exporting ev_head TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA headquarters TYPE string.
ENDCLASS.



CLASS zcl_lab_41_organization_ccf IMPLEMENTATION.
  METHOD set_headquarters.
    headquarters = iv_head.
  ENDMETHOD.

  METHOD get_headquarters.
    ev_head =   headquarters.
   ENDMETHOD.

ENDCLASS.
