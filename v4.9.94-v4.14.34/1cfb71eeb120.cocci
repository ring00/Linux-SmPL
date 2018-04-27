//# pattern-9, witnesses: 2
@@
@@
- atomic_set(&rt->dst.__refcnt, 1);
//# pattern-12, witnesses: 2
@@
expression V0;
@@
- dst_hold(&V0->dst);
