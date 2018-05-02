//# pattern-3, witnesses: 3
@@
expression E0;
@@
- E0->usb_address0_mutex
+ E0->devnum_next_mutex
//# pattern-2, witnesses: 2
@@
@@
- &hdev->bus->usb_address0_mutex
+ hcd->address0_mutex
