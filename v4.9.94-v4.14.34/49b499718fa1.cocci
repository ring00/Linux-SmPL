//# pattern-9, witnesses: 4
@@
expression E0;
@@
- qdisc_hash_add(E0)
+ qdisc_hash_add(E0, false)
//# pattern-1, witnesses: 3
@@
identifier PV0;
@@
- tc_qdisc_dump_ignore(PV0)
+ tc_qdisc_dump_ignore(PV0, false)
//# pattern-14, witnesses: 2
@@
@@
- if (cl->qdisc == NULL) {
- }
+ if (cl->qdisc == NULL) {
+ }
