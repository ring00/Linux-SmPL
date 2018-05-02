//# pattern-4, witnesses: 3
@@
@@
- QUEUE_FLAG_SECDISCARD
+ QUEUE_FLAG_SECERASE
//# pattern-5, witnesses: 2
@@
expression ME2;
identifier PV0;
identifier PV1;
identifier PV3;
statement S4;
@@
- if (!blk_check_merge_flags(PV0->cmd_flags, req_op(PV1), ME2, (PV3))) { S4 }
+ if (req_op(PV1) != (PV3)) { S4 }
