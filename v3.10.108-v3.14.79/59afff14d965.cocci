//# pattern-4, witnesses: 11
@@
expression E0;
@@
- E0 == USB_SPEED_SUPER
+ E0 >= USB_SPEED_SUPER
//# pattern-2, witnesses: 6
@@
expression E0;
@@
- E0->speed != USB_SPEED_SUPER
+ E0->speed < USB_SPEED_SUPER
