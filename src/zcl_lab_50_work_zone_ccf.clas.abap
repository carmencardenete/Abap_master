CLASS zcl_lab_50_work_zone_ccf DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC
   GLOBAL FRIENDS zcl_lab_51_wz_friend_ccf .

  PUBLIC SECTION.

  PROTECTED SECTION.
  PRIVATE SECTION.
    metHODS SET_WORK_ZONE .
      data gs_worty type ty_work_zone.
      data go_cl type ref to lcl_helper.
    ENDCLASS.



CLASS zcl_lab_50_work_zone_ccf IMPLEMENTATION.
  METHOD set_work_zone.
    go_cl = new #( ).
    me->gs_worty = go_cl->get_work_zone(   ).
  ENDMETHOD.

ENDCLASS.
