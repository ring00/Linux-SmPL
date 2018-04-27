//# pattern-1, witnesses: 2
@@
identifier conn;
identifier fn;
identifier req;
@@
 void fn(struct hci_request * req, struct hci_conn * conn)
 {
     <...
- hci_update_random_address(req, false, &own_addr_type)
+ hci_update_random_address(req, false, conn_use_rpa(conn), &own_addr_type)
     ...>
 }
//# pattern-5, witnesses: 2
@@
expression EC0;
@@
- hci_update_random_address(req, EC0, &own_addr_type)
+ hci_update_random_address(req, EC0, scan_use_rpa(hdev), &own_addr_type)
