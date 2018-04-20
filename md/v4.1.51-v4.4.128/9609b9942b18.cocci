//# pattern-2, witnesses: 3
@@
expression E0;
@@
- blk_integrity_unregister(E0);
//# pattern-1, witnesses: 2
@@
identifier PV0;
identifier PV1;
@@
- if (blk_get_integrity(PV0->disk)) {
- blk_integrity_unregister(PV1->disk);
- }
