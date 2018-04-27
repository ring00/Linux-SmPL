//# pattern-2, witnesses: 2
@@
expression ME0;
identifier hdev;
@@
 int hci_dev_do_close(struct hci_dev * hdev)
 {
     <...
- cancel_delayed_work_sync(&ME0);
     ...>
 }
//# pattern-3, witnesses: 2
@@
expression F1;
expression ME0;
@@
- INIT_DELAYED_WORK(&ME0, F1);
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- E0->workqueue
+ E0->req_workqueue
