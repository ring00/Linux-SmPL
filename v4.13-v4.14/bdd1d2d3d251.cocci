//# pattern-1, witnesses: 7
@@
expression E0;
expression E1;
expression E2;
@@
- kernel_read(E0, 0, E1, E2)
+ kernel_read(E0, E1, E2, &pos)
//# pattern-7, witnesses: 2
@@
expression E0;
identifier PV1;
identifier PV2;
identifier PV3;
@@
- kernel_read(E0, PV1, PV2, PV3)
+ kernel_read(E0, PV2, PV3, &PV1)
