CLASS zcl_lab_58_date_analyzer_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    DATA v_log TYPE string.
    METHODS  analyze_date    IMPORTING io_pre TYPE REF TO cx_root OPTIONAL
                             RAISING   zcx_lab_56_no_date_ccf .
    METHODS  analyze_format   IMPORTING io_pre TYPE REF TO cx_root OPTIONAL
                              RAISING   zcx_lab_57_format_ccf .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lab_58_date_analyzer_ccf IMPLEMENTATION.
  METHOD analyze_date.
    RAISE EXCEPTION TYPE zcx_lab_56_no_date_ccf
      EXPORTING
        textid   = zcx_lab_56_no_date_ccf=>date
        previous = io_pre.
  ENDMETHOD.
  METHOD analyze_format.
    RAISE EXCEPTION TYPE zcx_lab_57_format_ccf
      EXPORTING
        textid   = zcx_lab_57_format_ccf=>for
        previous = io_pre.
  ENDMETHOD.

ENDCLASS.
