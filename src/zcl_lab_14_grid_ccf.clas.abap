CLASS zcl_lab_14_grid_ccf DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_13_view_ccf
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    methods constructor importing: IV_BOX type STRING.
*                                   iv_view_type type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_14_grid_ccf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( iv_view_type = 'Hola' ).
*   super->constructor( iv_view_type = iv_view_type  ).
    me->box = iv_box.
  ENDMETHOD.
ENDCLASS.
