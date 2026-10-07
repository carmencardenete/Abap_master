CLASS zcl_lab_32_internal_empl_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_04_employee_ccf .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_32_internal_empl_ccf IMPLEMENTATION.


  METHOD zif_lab_04_employee_ccf~get_employees_count.
    rv_empl = '32'.
  ENDMETHOD.
ENDCLASS.
