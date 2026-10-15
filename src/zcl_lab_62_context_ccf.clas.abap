CLASS zcl_lab_62_context_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS get_instancia
      RETURNING VALUE(rv_inst) TYPE REF TO zcl_lab_62_context_ccf.
    METHODS constructor.
    DATA v_time TYPE syuzeit.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA v_inst TYPE REF TO zcl_lab_62_context_ccf .
ENDCLASS.



CLASS zcl_lab_62_context_ccf IMPLEMENTATION.
  METHOD get_instancia.
    IF v_inst IS NOT BOUND.
      v_inst = NEW zcl_lab_62_context_ccf(  ) .
    ENDIF.
    rv_inst = v_inst.
  ENDMETHOD.

  METHOD constructor.
    me->v_time = cl_abap_context_info=>get_system_time( ).
  ENDMETHOD.

ENDCLASS.
