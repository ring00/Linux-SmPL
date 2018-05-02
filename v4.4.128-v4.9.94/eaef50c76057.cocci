//# pattern-1, witnesses: 14
@@
expression E2;
expression V0;
expression V1;
identifier c;
identifier f;
identifier fn;
@@
 int fn(struct usb_configuration * c, struct usb_function * f)
 {
     <...
- usb_assign_descriptors(f, V0, V1, E2)
+ usb_assign_descriptors(f, V0, V1, E2, NULL)
     ...>
 }
