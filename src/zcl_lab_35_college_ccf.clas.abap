CLASS zcl_lab_35_college_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA lo_student TYPE REF TO ZCL_LAB_34_STUDENT_ccf.
    METHODS enroll_student IMPORTING io_student TYPE REF TO ZCL_LAB_34_STUDENT_ccf.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_35_college_ccf IMPLEMENTATION.
  METHOD enroll_student.
    lo_student = io_student.

  ENDMETHOD.

ENDCLASS.
