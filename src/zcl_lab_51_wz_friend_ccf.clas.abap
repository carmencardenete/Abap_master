CLASS zcl_lab_51_wz_friend_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    methods GET_HELPER  .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_51_wz_friend_ccf IMPLEMENTATION.
  METHOD get_helper .
     data(lo_work) = new zcl_lab_50_work_zone_ccf(  ).
lo_work->set_work_zone( ).
lo_work->go_cl->get_work_zone(
*  RECEIVING
*    rs_work_zone =
).
  ENDMETHOD.

ENDCLASS.
