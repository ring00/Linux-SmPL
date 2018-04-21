//# pattern-1, witnesses: 2
@@
@@
- calldata->roc_barrier
+ calldata->lr.roc_barrier
//# pattern-7, witnesses: 2
@@
statement S0;
@@
- if (calldata->roc) { S0 }
+ if (calldata->lr.roc) { S0 }
