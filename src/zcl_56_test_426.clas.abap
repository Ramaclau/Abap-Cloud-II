CLASS zcl_56_test_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  for TESTING
  DURATION SHORT "medium long
  RISK LEVEL HARMLESS. "dangerous critical

  PUBLIC SECTION.
    "! @testing zcl_55_business_426
    METHODS factorial_test for testing. "UTM - Unit Test methods

  PROTECTED SECTION.
  PRIVATE SECTION.

    class-METHODS class_setup.
    class-METHODS class_teardown.

    METHODS setup.
    METHODS teardown.

    data mo_cut TYPE REF TO zcl_55_business_426. " CUT: Class Under Test
ENDCLASS.

CLASS zcl_56_test_426 IMPLEMENTATION.
  METHOD setup.
    mo_cut = NEW zcl_55_business_426(  ).
  ENDMETHOD.

  METHOD factorial_test.
    "Given
    data(lv_numbert_ut) = 4.
    data lv_factorial_ut TYPE i.

    "When
    mo_cut->get_factorial( EXPORTING iv_number    = lv_numbert_ut
                           IMPORTING ev_factorial = lv_factorial_ut ).

    "Then
    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lv_factorial_ut
        exp                  = 24 ).

  ENDMETHOD.

  METHOD teardown.
    CLEAR mo_cut.
  ENDMETHOD.

  METHOD class_setup.

  ENDMETHOD.

  METHOD class_teardown.

  ENDMETHOD.

ENDCLASS.
