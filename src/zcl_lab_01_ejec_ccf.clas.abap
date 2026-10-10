CLASS zcl_lab_01_ejec_ccf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_ejec_ccf IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
*ejercicio 1
*    out->write( 'Hola mundo' ).
*
**********************************************************************
*ejercicio dos
*  data(lo_lab2) = new zcl_lab_02_product_ccf(  ).
*  lo_lab2->set_product( '125' ).
**********************************************************************
** ejercicio 4 explicar estatico y instacia.
** statico
*   zcl_lab_03_contract_ccf=>static = 'Hola'.
*   out->write( zcl_lab_03_contract_ccf=>static ).
**instancia
*    data(lo_lab4) = new zcl_lab_03_contract_ccf(  ).
*    lo_lab4->cntr_type = '02'.
*     out->write( lo_lab4->cntr_type ).
**statico se comparte para todas las instnacia
*          out->write( lo_lab4->static ).

**********************************************************************
** ejercicio 5
*  data(lo_lab5) = new zcl_lab_04_person_ccf(  ).
*   lo_lab5->set_age( iv_age = 25  ).
*   lo_lab5->get_age(
*     IMPORTING
*       ev_age = data(lv_age)  ).
*      out->write( lv_age  ).
**********************************************************************
*** ejercicio 6
*  data(lo_lab6) = new zcl_lab_05_flight_ccf(  ).
*  out->write( |EA  { lo_lab6->funcional( iv_vuelo = 'EA' ) } .| ).
*  out->write( |LH  { lo_lab6->funcional( iv_vuelo = 'LH' ) } .| ).

**** ejercicio 7
*    DATA(lo_lab7) = NEW zcl_lab_06_elements_ccf(  ).
*    DATA ms_object TYPE zcl_lab_06_elements_ccf=>ty_elem_objects.
*    ms_object-class = 'zcl_lab_06_elements_ccf'.
*    ms_object-instance = 'Yes'.
*    ms_object-reference = 'ok'.
*    lo_lab7->set_object( ms_object  ).
*    out->write( |{ lo_lab7->ms_object-class }-{ lo_lab7->ms_object-instance }-{ lo_lab7->ms_object-reference } .| ).
*
** ejercicio 8
*    out->write( |{ lo_lab7->c_una }-{ lo_lab7->c_dos }-{ zcl_lab_06_elements_ccf=>c_tres }-{ zcl_lab_06_elements_ccf=>c_cuatro }| ).

**********************************************************************
**ejercicio 9
* DATA(lo_lab9) = NEW zcl_lab_07_student_ccf( ).
* lo_lab9->set_birth_date( '15101977'  ).


**ejercicio 10
* DATA(lo_lab10) = NEW zcl_lab_08_work_record( ).
* lo_lab10->open_new_record(
*   iv_date       =  '15101977'
*   iv_first_name =  'Nombre'
*   iv_last_name  =  'Apel'
* )..
**ejercicio 11
* DATA(lo_lab11) = NEW zcl_lab_09_account( ).
*
*  lo_lab11->set( iban = '125698' ).
*  lo_lab11->get(
*    IMPORTING
*      iban =  data(iban)
*  ).
*
*  out->write( iban ).
**********************************************************************
**ejercicio constructor estatico y  de instancia
*    DATA(lo_lab12) = NEW zcl_lab_10_constructor( ).
*    out->write( zcl_lab_10_constructor=>log ).
*    DATA(lo_lab12_2) = NEW zcl_lab_10_constructor( ).
*    out->write( zcl_lab_10_constructor=>log ).
**********************************************************************
**1- herencia
*  data(lo_lab12) = new zcl_lab_12_linux_ccf( ).
*  lo_lab12->get_architecture(
*    IMPORTING
*      ev_architecture = data(lv_archi)  ).
*  out->write( lv_archi ).
**********************************************************************
**3- redefinir
*    DATA lv_flight TYPE /dmo/flight.
*    DATA(lo_lab15) = NEW zcl_lab_15_flight_price_ccf( ).
*    DATA(lo_lab16) = NEW zcl_lab_16_price_discount_ccf( ).
*    DATA(lo_lab17) = NEW zcl_lab_17_super_discount_ccf( ).
*    lv_flight-carrier_id = '1'.
*    lv_flight-price = 100.
*    lo_lab15->add_price( iv_flight = lv_flight ).
*    lo_lab16->add_price( iv_flight = lv_flight ).
*    lo_lab17->add_price( iv_flight = lv_flight ).
*    out->write( lo_lab15->mt_flights  ).
*    out->write( lo_lab16->mt_flights  ).
*    out->write( lo_lab17->mt_flights  ).
**********************************************************************
* 4 y 5
*    DATA(lo_lab18) = NEW zcl_lab_18_animal_ccf( ).
*    DATA(lo_lab19) = NEW zcl_lab_19_lion_ccf( ).
**  Narrowing
*    lo_lab18  = lo_lab19.
*    out->write( lo_lab18->walk( ) ).
*    out->write( lo_lab19->walk( ) ).
** Widening Cast
*    TRY.
*        lo_lab19 ?= lo_lab18.
*        out->write( lo_lab18->walk( ) ).
*        out->write( lo_lab19->walk( ) ).
*      CATCH  cx_sy_move_cast_error ."system-exceptions.
*        out->write( 'Error' ).
*    ENDTRY.
**********************************************************************
*8 encap. de instacian
*    DATA(lo_lab21) = NEW zcl_lab_21_classroom_ccf( ).
*    DATA(lo_lab22) = NEW zcl_lab_22_student_ccf( ).
**********************************************************************
**-9 clases amiga.
*    DATA(lo_lab24) = NEW zcl_lab_24_partner_ccf( ).
*    out->write( lo_lab24->get_company_capital( ) ).
*    DATA(lo_lab25) = NEW zcl_lab_25_collaborator_ccf( ).
*    out->write( lo_lab25->capital( ) ).
**********************************************************************
** 1- interfases
*    DATA(lo_lab26) = NEW zcl_lab_26_flights_ccf( ).
*    lo_lab26->zif_lab_01_flight_ccf~set_comp( '1235' ).
*    lo_lab26->zif_lab_01_flight_ccf~set_conn_id( 'otro' ).
*    out->write( | Comp: { lo_lab26->zif_lab_01_flight_ccf~get_comp(  ) }| ).
*    out->write( | Conn id: { lo_lab26->zif_lab_01_flight_ccf~get_conn_id(  ) }| ).
*
**3- interfase multiples.
*    out->write( lo_lab26->zif_lab_02_customer_ccf~get_customer( iv_customer_id = '123' ) ) .
**4 - interfases anidados.
*    out->write( lo_lab26->zif_lab_03_airports_ccf~get_airports( iv_airport_id = '001' ) ) .
* Alias.
** 1- interfases
*    DATA(lo_lab26) = NEW zcl_lab_26_flights_ccf( ).
*    lo_lab26->set_comp( '1235' ).
*    lo_lab26->set_conn_id( 'otro' ).
*    out->write( | Comp: { lo_lab26->get_comp(  ) }| ).
*    out->write( | Conn id: { lo_lab26->get_conn_id(  ) }| ).
*
**3- interfase multiples.
*    out->write( lo_lab26->get_customer( iv_customer_id = '123' ) ) .
**4 - interfases anidados.
*    out->write( lo_lab26->get_airports( iv_airport_id = '001' ) ) .
**********************************************************************
*6 clase abs.
*    DATA(lo_lab28) = NEW zcl_lab_28_logistics_ccf( ).
*    out->write( lo_lab28->input_products( ) ) .
*    out->write( lo_lab28->merchandise_output( ) ) .
*    out->write( lo_lab28->production_line( ) ) .
**********************************************************************
*1 POLIMORFISMO
*  DATA: lt_class type table of ref TO zcl_lab_29_organization_ccf.
*  DATA(lo_lab29) = NEW zcl_lab_29_organization_ccf( ).
*  DATA(lo_lab30) = NEW zcl_lab_30_org_germany_ccf( ).
*  DATA(lo_lab31) = NEW zcl_lab_31_org_france_ccf( ).
*  append lo_lab30 to lt_class.
*  append lo_lab31 to lt_class.
*  loop at lt_class into lo_lab29.
*    out->write( lo_lab29->get_location( ) ).
*  endLOOP.
**********************************************************************
*2 poli inte
*  DATA: lt_class type table of ref TO zif_lab_04_employee_ccf.
*  DATA: ls_class type ref to zif_lab_04_employee_ccf.
*  DATA(lo_lab32) = NEW zcl_lab_32_internal_empl_ccf( ).
*  DATA(lo_lab33) = NEW zcl_lab_33_expatriate_empl_ccf( ).
*  append lo_lab32 to lt_class.
*  append lo_lab33 to lt_class.
*  loop at lt_class into ls_class.
*    out->write( ls_class->get_employees_count( ) ).
*  endLOOP.
**********************************************************************
**asociacion.
*
*    DATA(lo_lab34) = NEW zcl_lab_34_student_ccf( ).
*    DATA(lo_lab35) = NEW zcl_lab_35_college_ccf( ).
*    lo_lab34->set( 'Pepito' ).
*    lo_lab35->enroll_student( io_student = lo_lab34  ).
*    out->write( lo_lab35->lo_student->get(  ) ).
**********************************************************************
** composicion
**    DATA(lo_lab36) = NEW zcl_lab_36_phone_ccf( ). " se tiene que pasar la instancia de screen
*    DATA(lo_lab37) = NEW zcl_lab_37_screen_ccf( ).
*    DATA(lo_lab36) = NEW zcl_lab_36_phone_ccf( lo_lab37 ).
*    out->write( lo_lab37->get( ) ).
**********************************************************************
* DATA(lo_lab38) = NEW zcl_lab_38_prod_price_ccf( ).
* DATA(lo_lab382) = NEW zcl_lab_38_prod_price_ccf( ).
* lo_lab382->price = 'nuevo'.
* lo_lab38->price = '123'.
* out->write( lo_lab382->price ).
*out->write( lo_lab38->price ).
***********************************************************************
*    DATA lo_lab39 TYPE REF  TO zcl_lab_39_budget_ccf.
*    lo_lab39 = NEW zcl_lab_40_actual_budget_ccf( ).
*    out->write( lo_lab39->get_budget(  ) ).
**********************************************************************
*    DATA lo_lab41 TYPE REF  TO OBJECT.
*    data: gv_method_name type string value 'SET_HEADQUARTERS',
*          gv_method_name2 type string value 'GET_HEADQUARTERS',
*          lv_result type string.
*    lo_lab41 = NEW zcl_lab_41_organization_ccf( ).
*
*  CALL METHOD lo_lab41->(gv_method_name)
*     EXPORTING iv_head = 'prueba'.
*
*     CALL METHOD lo_lab41->(gv_method_name2)
*        importing iv_head = lv_result.
*    out->write( lv_result ).

*  data(lo_lab42) = new zcl_lab_42_screen_ccf( 'Nueva pantalla'  ).
*  data(lo_lab43) = new zcl_lab_43_navigation_ccf(  ).
*  set haNDLER lo_lab43->on_touch_screen fOR lo_lab42.
*
*   lo_lab42->element_selected( ).
*
*  out->write( lo_lab43->v_log ).

*    DATA(lo_lab44) = NEW zcl_lab_44_operating_systemccf(   ).
*    DATA(lo_lab45) = NEW zcl_lab_45_chrome_ccf(  ).
*    SET HANDLER lo_lab45->on_close_window FOR lo_lab44.
*
*    DO 5 TIMES.
*      out->write( lo_lab44->mouse_movement( ) ).
*      out->write( lo_lab45->v_log ).
*      IF sy-index = 3.
*        SET HANDLER lo_lab45->on_close_window FOR lo_lab44 ACTIVATION abap_false.
*        lo_lab45->v_log = 'No lanzado'.
*      ENDIF.
*    ENDDO.
*
*
*    SET HANDLER zcl_lab_47_customer_serviceccf=>on_new_call .
*    zcl_lab_46_mobile_operator_ccf=>assign_call( iv_phone_number = '123 58 22 22 '  ).
*    out->write( zcl_lab_47_customer_serviceccf=>v_log ).

    DATA(lo_lab48_1) = NEW zcl_lab_48_administrative_dccf( 'Empleado 1'  ).
    DATA(lo_lab48_2) = NEW zcl_lab_48_administrative_dccf( 'Empleado 2'  ).
    DATA(lo_lab48_3) = NEW zcl_lab_48_administrative_dccf( 'Empleado 3'  ).

    DATA(lo_lab49) = NEW zcl_lab_49_employee_ccf(  ).
    SET HANDLER lo_lab49->on_payroll_paid FOR ALL INSTANCES.


    out->write( lo_lab48_1->notify_employee( ) ).
    out->write( lo_lab48_2->notify_employee( ) ).
    out->write( lo_lab48_3->notify_employee( ) ).

    out->write( lo_lab49->it_table ).





  ENDMETHOD.
ENDCLASS.
