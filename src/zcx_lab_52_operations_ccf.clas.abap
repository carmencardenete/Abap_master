CLASS zcx_lab_52_operations_ccf DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES if_t100_message .
    INTERFACES if_t100_dyn_msg .
    CONSTANTS:
      BEGIN OF no_execute,
        msgid TYPE symsgid VALUE 'ZABAP_CLOUD_CCF',
        msgno TYPE symsgno VALUE '001',
        attr1 TYPE scx_attrname VALUE 'MSVG1',
        attr2 TYPE scx_attrname VALUE 'MSVG2',
        attr3 TYPE scx_attrname VALUE 'MSVG3',
        attr4 TYPE scx_attrname VALUE 'MSVG4',
      END OF no_execute,
      BEGIN OF no_access,
        msgid TYPE symsgid VALUE 'ZABAP_CLOUD_CCF',
        msgno TYPE symsgno VALUE '002',
        attr1 TYPE scx_attrname VALUE 'MSGV1',
        attr2 TYPE scx_attrname VALUE 'MSGV2',
        attr3 TYPE scx_attrname VALUE 'MSGV3',
        attr4 TYPE scx_attrname VALUE 'MSGV4',
      END OF no_access.
    DATA:msgv1 TYPE string,
         msgv2 TYPE string,
         msgv3 TYPE string,
         msgv4 TYPE string.
    METHODS constructor
      IMPORTING
        !textid   LIKE if_t100_message=>t100key OPTIONAL
        !previous LIKE previous OPTIONAL
        iv_msgv1  TYPE string OPTIONAL
        iv_msgv2  TYPE string OPTIONAL
        iv_msgv3  TYPE string OPTIONAL
        iv_msgv4  TYPE string OPTIONAL  .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcx_lab_52_operations_ccf IMPLEMENTATION.


  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    super->constructor(
    previous = previous
    ).
    CLEAR me->textid.
    IF textid IS INITIAL.
      if_t100_message~t100key = if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.
    me->msgv1 = iv_msgv1.
    me->msgv2 = iv_msgv2.
    me->msgv3 = iv_msgv3.
    me->msgv4 = iv_msgv4.
  ENDMETHOD.
ENDCLASS.
