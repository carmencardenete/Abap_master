CLASS zcl_lab_04_person_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
     metHODS: get_age exporting ev_age type i,
            set_age importing iv_age type i.
  PROTECTED SECTION.
  PRIVATE SECTION.
   data AGE type i.
ENDCLASS.



CLASS zcl_lab_04_person_ccf IMPLEMENTATION.
  METHOD get_age.
    ev_age = age.
  ENDMETHOD.

  METHOD set_age.
     age = iv_age.
  ENDMETHOD.

ENDCLASS.
