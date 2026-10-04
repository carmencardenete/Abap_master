CLASS zcl_lab_09_account DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   methODS: set importing iban type string,
            get exporting iban type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
  data IBAN type STRING.
ENDCLASS.



CLASS zcl_lab_09_account IMPLEMENTATION.
  METHOD get.
      iban = me->iban .
  ENDMETHOD.

  METHOD set.
    me->iban = iban .
  ENDMETHOD.

ENDCLASS.
