CLASS zcl_18_moto_426 DEFINITION ABSTRACT
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS set_hp IMPORTING ib_hp type i.

  PROTECTED SECTION.
    METHODS set_max_speed ABSTRACT IMPORTING iv_max_speed type i.
  PRIVATE SECTION.
    data hp type i.
ENDCLASS.



CLASS ZCL_18_MOTO_426 IMPLEMENTATION.


  METHOD set_hp.

  ENDMETHOD.
ENDCLASS.
