//# pattern-1, witnesses: 4
@@
expression E0;
@@
- refcount_inc(&E0->refcnt)
+ qdisc_refcount_inc(E0)
