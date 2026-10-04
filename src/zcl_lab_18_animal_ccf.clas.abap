CLASS zcl_lab_18_animal_ccf DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   methods walk returnING VALUE(ev_walk) type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_18_animal_ccf IMPLEMENTATION.
  METHOD walk.
    ev_walk = 'The animal walks'.
  ENDMETHOD.

ENDCLASS.
