//# pattern-1, witnesses: 2
@@
expression V0;
expression list listE1;
@@
- V0.garbage_collect(listE1)
+ xfrm_garbage_collect_deferred(listE1)
