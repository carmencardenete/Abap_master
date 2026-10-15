CLASS zcl_lab_54_bank_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    data v_log type string.
    METHODS transfer IMPORTING iv_iban TYPE string
                     RAISING reSUMABLE(zcx_lab_55_auth_iban_ccf)   .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lab_54_bank_ccf IMPLEMENTATION.
  METHOD transfer.
    if iv_iban eq 'ES95 4329 8765 4321'.
      v_log = ' provoca raise'.
        RAISE RESUMABLE EXCEPTION type zcx_lab_55_auth_iban_ccf
       EXPORTING
          textid = zcx_lab_55_auth_iban_ccf=>iban .
*         previous =.
   else.
   v_log = ' Sin raise'.
   endif.
    v_log = | { v_log } .... 'pero continua el resto de logica'|.
  ENDMETHOD.

ENDCLASS.
