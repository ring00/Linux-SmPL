//# pattern-4, witnesses: 6
@@
expression E0;
expression E1;
@@
- kernel_write(file, E0, E1, 0)
+ kernel_write(file, E0, E1, &pos)
//# pattern-7, witnesses: 2
@@
expression E0;
identifier PV1;
identifier PV2;
identifier PV3;
@@
- kernel_write(E0, PV1, PV2, PV3)
+ kernel_write(E0, PV1, PV2, &PV3)
