//# pattern-1, witnesses: 62
@@
expression E0;
@@
- ACCESS_ONCE(E0)
+ READ_ONCE(E0)
//# pattern-2, witnesses: 4
@@
expression E0;
@@
- E0 == ACCESS_ONCE(qp->s_head)
+ E0 == READ_ONCE(qp->s_head)
