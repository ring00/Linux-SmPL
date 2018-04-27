//# pattern-4, witnesses: 7
@@
expression list listE0;
@@
- hci_update_page_scan(listE0)
+ hci_req_update_scan(listE0)
//# pattern-3, witnesses: 3
@@
expression list listE0;
@@
- __hci_update_page_scan(listE0)
+ __hci_req_update_scan(listE0)
