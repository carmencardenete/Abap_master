CLASS zcl_lab_10_constructor DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  clASS-DATA log type string.
  metHODS constructor.
  class-meTHODS class_constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_10_constructor IMPLEMENTATION.
  METHOD class_constructor.
   log = |{ log } - Estatico  |.
  ENDMETHOD.

  METHOD constructor.
   log = |{ log } - Instancia |.
  ENDMETHOD.

ENDCLASS.
