CLASS zcl_lab_45_chrome_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA   v_LOG  TYPE  string.

    METHODS  on_close_window FOR EVENT  close_window OF  zif_lab_05_browser_ccf.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_45_chrome_ccf IMPLEMENTATION.
  METHOD on_close_window.
      me->v_log = |Evento de interfase lanzado { cl_abap_context_info=>get_system_date(  ) }|.
  ENDMETHOD.

ENDCLASS.
