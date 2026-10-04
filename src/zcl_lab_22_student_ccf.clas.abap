CLASS zcl_lab_22_student_ccf DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_21_classroom_ccf
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS assign_student.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_22_student_ccf IMPLEMENTATION.
  METHOD assign_student.
    DATA(lo_class) = NEW zcl_lab_21_classroom_ccf( ).
  ENDMETHOD.

ENDCLASS.
