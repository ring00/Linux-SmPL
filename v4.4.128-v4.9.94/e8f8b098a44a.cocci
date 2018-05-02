//# pattern-1, witnesses: 2
@@
expression E0;
@@
- !mr || mr->lkey != E0
+ !mr || atomic_read(&mr->lkey_invalid) || mr->lkey != E0
