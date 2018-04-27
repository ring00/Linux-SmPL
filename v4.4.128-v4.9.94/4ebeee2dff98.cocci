//# pattern-1, witnesses: 7
@@
expression E1;
expression F0;
identifier fn;
identifier hdev;
@@
 int fn(struct hci_dev * hdev)
 {
     <...
- __hci_req_sync(hdev, F0, 0, E1)
+ __hci_req_sync(hdev, F0, 0, E1, NULL)
     ...>
 }
//# pattern-2, witnesses: 6
@@
expression E1;
expression E2;
expression F0;
@@
- hci_req_sync(hdev, F0, E1, E2)
+ hci_req_sync(hdev, F0, E1, E2, NULL)
