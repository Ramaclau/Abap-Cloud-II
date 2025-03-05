*"* use this source file for any type of declarations (class
*"* definitions, interfaces or type declarations) you need for
*"* components in the private section
TYPES: BEGIN OF ty_first,
        comp1 type string,
        comp2 type string,
        comp3 type string,
       END OF ty_first.

INTERFACE lif_private_helper.
    data ms_first type ty_first.
ENDINTERFACE.

class lcl_helper DEFINITION.
    PUBLIC SECTION.
      data ms_first_cl type ty_first.
ENDCLASS.
