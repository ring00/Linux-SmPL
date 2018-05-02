//# pattern-2, witnesses: 3
@@
expression EC0;
statement S1;
@@
- if (nvdimm->flags & EC0) { S1 }
+ if (test_bit(EC0, &nvdimm->flags)) { S1 }
//# pattern-1, witnesses: 2
@@
expression E0;
@@
- E0 |= NDD_ALIASING;
+ set_bit(NDD_ALIASING, &E0);
