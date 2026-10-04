CLASS zcl_lab_11_system_ccf DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    DATA architecture TYPE string VALUE '64BITS'.
    METHODS get_architecture EXPORTING ev_ARCHITECTURE TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_11_system_ccf IMPLEMENTATION.
  METHOD get_architecture.
    ev_architecture = me->architecture.
  ENDMETHOD.

ENDCLASS.
