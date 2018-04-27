//# pattern-1, witnesses: 4
@@
@@
- !hci_dev_test_flag(hdev, HCI_ADVERTISING_INSTANCE)
+ list_empty(&hdev->adv_instances)
//# pattern-6, witnesses: 2
@@
@@
- hdev(HCI_ADVERTISING_INSTANCE);
