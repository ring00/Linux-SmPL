//# pattern-2, witnesses: 2
@@
expression E0;
statement S1;
@@
- if (!bnxt_tc_flower_enabled(E0)) { S1 }
+ if (!bnxt_tc_flower_enabled(E0) || !tc_can_offload(bp->dev)) { S1 }
