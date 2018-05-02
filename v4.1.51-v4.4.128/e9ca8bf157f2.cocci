//# pattern-1, witnesses: 12
@@
identifier fn;
identifier hdev;
@@
 int fn(struct hci_dev * hdev)
 { ... }
//# pattern-7, witnesses: 3
@@
identifier fn;
identifier hdev;
@@
 int fn(struct hci_dev * hdev)
 {
     <...
- if (!test_and_clear_bit(HCI_RUNNING, &hdev->flags)) {
- }
- return 0;
     ...>
 }
//# pattern-2, witnesses: 2
@@
identifier fn;
identifier hdev;
@@
 int fn(struct hci_dev * hdev)
 { ... }
//# pattern-9, witnesses: 2
@@
identifier fn;
identifier hdev;
@@
 int fn(struct hci_dev * hdev)
 { ... }
//# pattern-13, witnesses: 2
@@
identifier fn;
identifier hdev;
@@
 int fn(struct hci_dev * hdev)
 {
     <...
- set_bit(HCI_RUNNING, &hdev->flags);
     ...>
 }
