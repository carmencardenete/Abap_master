CLASS zcl_lab_48_administrative_dccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    EVENTS PAYROLL_PAID .
    METHODS NOTIFY_EMPLOYEE returning value(ev_log) type string.
    methods constructor importING iv_para type string.
    data id type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_48_administrative_dccf IMPLEMENTATION.


  METHOD constructor.
    me->id = iv_para.
  ENDMETHOD.

  METHOD notify_employee.
    raise event PAYROLL_PAID.
    ev_log = |Lanzamiento { me->id }|.
  ENDMETHOD.

ENDCLASS.
