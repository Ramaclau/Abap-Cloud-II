*"* use this source file for your ABAP unit test classes
class ltcl_business_process definition final for testing
  duration short
  risk level harmless.

  private section.
    methods:
      factorial_test for testing raising cx_static_check.

    class-METHODS class_setup.
    class-METHODS class_teardown.

    METHODS setup.
    METHODS teardown.

    data mo_cut TYPE REF TO zcl_55_business_426. " CUT: Class Under Test

endclass.

class ltcl_business_process implementation.

  method factorial_test.

    "Given
    data(lv_numbert_ut) = 4.
    data lv_factorial_ut TYPE i.

    "When
    mo_cut->get_factorial( EXPORTING iv_number    = lv_numbert_ut
                           IMPORTING ev_factorial = lv_factorial_ut ).

    "Then
    If cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lv_factorial_ut
        exp                  = 24 ) eq abap_true.

      cl_abap_unit_assert=>fail( 'Implement your first test here' ).

    ENDIF.
  endmethod.

  method class_setup.

  endmethod.

  method class_teardown.

  endmethod.

  method setup.
   mo_cut = NEW zcl_55_business_426(  ).
  endmethod.

  method teardown.
   clear mo_cut.
  endmethod.

endclass.
