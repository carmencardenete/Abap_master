CLASS zcl_lab_19_lion_ccf DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_18_animal_ccf
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    methods walk reDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_19_lion_ccf IMPLEMENTATION.
  METHOD walk.
    ev_walk = 'The lion walks'.
  ENDMETHOD.

ENDCLASS.
