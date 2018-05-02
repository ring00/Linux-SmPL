//# pattern-3, witnesses: 14
@@
expression E0;
@@
- E0->transceiver
+ E0->usb_phy
//# pattern-2, witnesses: 4
@@
expression E0;
@@
- E0->phy
+ E0->usb_phy
//# pattern-6, witnesses: 2
@@
expression E0;
@@
- IS_ENABLED && E0
+ IS_ENABLED && hcd->remove_phy && E0
