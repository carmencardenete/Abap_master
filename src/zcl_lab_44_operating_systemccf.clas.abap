CLASS zcl_lab_44_operating_systemccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_05_browser_ccf .
    METHODS  mouse_movement returnING VALUE(ev_texto) type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_44_operating_systemccf IMPLEMENTATION.
  METHOD mouse_movement.
    RAISE EVENT zif_lab_05_browser_ccf~close_window.
    ev_texto = 'Movimiento'.
  ENDMETHOD.

ENDCLASS.
