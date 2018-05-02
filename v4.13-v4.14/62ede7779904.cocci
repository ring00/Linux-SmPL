//# pattern-1, witnesses: 9
@@
expression list listE0;
@@
- ib_slid_cpu16(listE0)
+ ib_lid_cpu16(listE0)
//# pattern-2, witnesses: 4
@@
expression list listE0;
@@
- ib_slid_be16(listE0)
+ ib_lid_be16(listE0)
//# pattern-4, witnesses: 3
@@
expression E0;
expression V1;
@@
- E0 = V1.lid
+ E0 = ib_lid_cpu16(V1.lid)
