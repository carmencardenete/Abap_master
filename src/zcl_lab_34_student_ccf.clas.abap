CLASS zcl_lab_34_student_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:  set IMPORTING iv_name TYPE string,
      get returNING VALUE(ev_name) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA name TYPE string.
ENDCLASS.



CLASS zcl_lab_34_student_ccf IMPLEMENTATION.
  METHOD get.
    ev_name = name.
  ENDMETHOD.

  METHOD set.
    name = iv_name.
  ENDMETHOD.

ENDCLASS.
