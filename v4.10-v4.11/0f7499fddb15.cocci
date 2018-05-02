//# pattern-1, witnesses: 7
@@
expression E0;
expression E2;
expression EC3;
expression list listE1;
@@
- E0 = rc_allocate_device(listE1);
- E2->driver_type = EC3;
+ E0 = rc_allocate_device(EC3);
//# pattern-4, witnesses: 6
@@
expression list listE0;
@@
- rc_allocate_device(listE0)
+ rc_allocate_device(RC_DRIVER_SCANCODE)
