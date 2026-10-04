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
*ejercicio constructor estatico y  de instancia
    DATA(lo_lab12) = NEW zcl_lab_10_constructor( ).
    out->write( zcl_lab_10_constructor=>log ).
    DATA(lo_lab12_2) = NEW zcl_lab_10_constructor( ).
    out->write( zcl_lab_10_constructor=>log ).


  ENDMETHOD.
ENDCLASS.
