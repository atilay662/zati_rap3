CLASS lhc_zi_ati_akvkal DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR zi_ati_akvkal  RESULT result.

*    METHODS uploadExcel FOR MODIFY
*      IMPORTING keys FOR ACTION ZI_ATI_AKVKAL~uploadExcel.

ENDCLASS.

CLASS lhc_zi_ati_akvkal IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.

ENDCLASS.

*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
