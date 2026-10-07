CLASS zcl_lab_37_screen_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get RETURNING VALUE(rv_type) TYPE string,
      set IMPORTING iv_type  TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA screen_type TYPE string.
ENDCLASS.



CLASS zcl_lab_37_screen_ccf IMPLEMENTATION.
  METHOD get.
    rv_type = screen_type.
  ENDMETHOD.

  METHOD set.
    screen_type = iv_type.
  ENDMETHOD.

ENDCLASS.
