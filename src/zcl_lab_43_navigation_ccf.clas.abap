CLASS zcl_lab_43_navigation_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA   v_LOG  TYPE  string.

    METHODS  on_touch_screen FOR EVENT  touch_screen OF  zcl_lab_42_screen_ccf
                            importing ev_hori
                                      ev_verti
                                      sender.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_43_navigation_ccf IMPLEMENTATION.


  METHOD on_touch_screen.
    me->v_log = |Screen: { sender->screen_type }- horizontal: { ev_hori } - Vertital: { ev_verti }|.
  ENDMETHOD.

ENDCLASS.
