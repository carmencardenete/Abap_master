CLASS zcl_lab_47_customer_serviceccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    class-DATA   v_LOG  TYPE  string.

   class-METHODS  on_new_call FOR EVENT  new_call OF  zcl_lab_46_mobile_operator_ccf
             importing ev_phone_number.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_47_customer_serviceccf IMPLEMENTATION.
  METHOD on_new_call.
      v_log = |LLamando  { ev_phone_number }|.
  ENDMETHOD.

ENDCLASS.
