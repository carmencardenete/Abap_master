CLASS zcl_lab_53_check_user_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    methods CHECK_USER importing iv_user type syuname
                       raisING  zcx_lab_52_operations_ccf.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_53_check_user_ccf IMPLEMENTATION.
  METHOD check_user.
   if iv_user eq sy-uname.
     raISE exCEPTION type zcx_lab_52_operations_ccf
       EXPORTING
          textid = zcx_lab_52_operations_ccf=>no_access
*         previous =
          iv_msgv1  = |{ iv_user }|
*         iv_msgv2  =
*         iv_msgv3  =
*         iv_msgv4  =
     .
   else.
   endif.
  ENDMETHOD.

ENDCLASS.
