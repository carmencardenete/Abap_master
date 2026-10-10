CLASS zcl_lab_49_employee_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  meTHODS on_PAYROLL_PAID  for evENT PAYROLL_PAID of zcl_lab_48_administrative_dccf
                  importing sender.

  data it_table type tabLE of string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_49_employee_ccf IMPLEMENTATION.
  METHOD on_payroll_paid.
    data l_log type string.
     l_log = |{ sender->id }- evento lanzado |.
     append l_log to it_table.
  ENDMETHOD.

ENDCLASS.
