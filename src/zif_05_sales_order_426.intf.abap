INTERFACE zif_05_sales_order_426
  PUBLIC .
    INTERFACES zif_04_document_426.

    METHODS create_order IMPORTING iv_order_id TYPE string.
ENDINTERFACE.
