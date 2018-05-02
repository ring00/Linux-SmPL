//# pattern-3, witnesses: 3
@@
expression E0;
@@
- E0 | DST_NOCACHE
+ E0
//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- rt_set_nexthop(rth, E0, res, fnhe, E1, E2, E3)
+ rt_set_nexthop(rth, E0, res, fnhe, E1, E2, E3, do_cache)
