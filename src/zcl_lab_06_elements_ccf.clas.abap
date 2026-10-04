CLASS zcl_lab_06_elements_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  consTANTS: c_una type string value '1',
             c_dos type string value '2',
             c_tres type string value '3',
             c_cuatro type string value '4'.
    TYPES: BEGIN OF ty_elem_objects ,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END OF ty_elem_objects.
    DATA  ms_object TYPE ty_elem_objects.
    METHODS set_object IMPORTING is_object TYPE ty_elem_objects.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_06_elements_ccf IMPLEMENTATION.
  METHOD set_object.
    ms_object = is_object.
  ENDMETHOD.

ENDCLASS.
