CLASS zcl_32_contract_cntr__426 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_09_contract_426.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_32_contract_cntr__426 IMPLEMENTATION.

  METHOD zif_09_contract_426~create_contract.
    me->zif_09_contract_426~contract_type = iv_cntr_type.
  ENDMETHOD.

ENDCLASS.
