CLASS zcl_lab_42_screen_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA screen_type TYPE  string.

    EVENTS  touch_screen EXPORTING VALUE(ev_hori)  TYPE i
                                   VALUE(ev_verti) TYPE i.
    METHODS: element_selected,
      constructor IMPORTING iv_screen_type TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_42_screen_ccf IMPLEMENTATION.
  METHOD element_selected.
    RAISE EVENT touch_screen
      EXPORTING
        ev_hori  =  10
        ev_verti =  20 .
  ENDMETHOD.

  METHOD constructor.
    me->screen_type = iv_screen_type.
  ENDMETHOD.

ENDCLASS.
