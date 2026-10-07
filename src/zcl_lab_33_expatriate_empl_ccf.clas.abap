CLASS zcl_lab_33_expatriate_empl_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_04_employee_ccf .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_33_expatriate_empl_ccf IMPLEMENTATION.


  METHOD zif_lab_04_employee_ccf~get_employees_count.
    rv_empl = '33'.
  ENDMETHOD.
ENDCLASS.
