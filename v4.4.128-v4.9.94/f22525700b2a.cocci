//# pattern-3, witnesses: 3
@@
expression list listE0;
@@
- mgmt_reenable_advertising(listE0)
+ hci_req_reenable_advertising(listE0)
//# pattern-5, witnesses: 3
@@
expression list listE0;
@@
- clear_adv_instance(listE0)
+ hci_req_clear_adv_instance(listE0)
//# pattern-11, witnesses: 3
@@
expression list listE0;
@@
- disable_advertising(listE0)
+ __hci_req_disable_advertising(listE0)
//# pattern-18, witnesses: 3
@@
@@
- update_adv_data(&req)
+ __hci_req_update_adv_data(&req, HCI_ADV_CURRENT)
//# pattern-4, witnesses: 2
@@
@@
- mgmt_update_adv_data(hdev)
+ hci_req_update_adv_data(hdev, HCI_ADV_CURRENT)
//# pattern-7, witnesses: 2
@@
expression list listE0;
@@
- schedule_adv_instance(listE0)
+ __hci_req_schedule_adv_instance(listE0)
