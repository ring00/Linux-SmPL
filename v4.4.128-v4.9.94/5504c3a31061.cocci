//# pattern-3, witnesses: 2
@@
expression E0;
expression E1;
@@
- mgmt_generic_event(MGMT_EV_CLASS_OF_DEV_CHANGED, hdev, E0, E1, NULL)
+ mgmt_limited_event(MGMT_EV_CLASS_OF_DEV_CHANGED, hdev, E0, E1, HCI_MGMT_DEV_CLASS_EVENTS, NULL)
//# pattern-4, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
@@
- mgmt_generic_event(MGMT_EV_LOCAL_NAME_CHANGED, hdev, E0, E1, E2)
+ mgmt_limited_event(MGMT_EV_LOCAL_NAME_CHANGED, hdev, E0, E1, HCI_MGMT_LOCAL_NAME_EVENTS, E2)
