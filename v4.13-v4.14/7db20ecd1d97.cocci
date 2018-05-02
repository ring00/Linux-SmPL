//# pattern-1, witnesses: 7
@@
identifier PV0;
@@
- PV0->slid
+ ib_slid_cpu16(PV0->slid)
//# pattern-3, witnesses: 4
@@
expression E0;
expression E1;
@@
- E0 = ()
+ E0 = ib_slid_be16(E1->slid)
