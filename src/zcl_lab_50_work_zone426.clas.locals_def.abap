*"* use this source file for any type of declarations (class
*"* definitions, interfaces or type declarations) you need for
*"* components in the private section
TYPES: BEGIN OF TY_WORK_ZONE,
        LAUNCHPAD type string,
        DASHBOARD type string,
        SPACES    type string,
       END OF TY_WORK_ZONE.

class LCL_HELPER DEFINITION.
    PUBLIC SECTION.
        data MS_WORK_ZONE type ty_work_zone.

        METHODS GET_WORK_ZONE RETURNING VALUE(er_work_zone) type string.
ENDCLASS.
