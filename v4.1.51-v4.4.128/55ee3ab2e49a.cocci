//# pattern-1, witnesses: 10
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- ib_get_cached_gid(E0, E1, E2, E3)
+ ib_get_cached_gid(E0, E1, E2, E3, NULL)
//# pattern-2, witnesses: 6
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- ib_query_gid(E0, E1, E2, E3)
+ ib_query_gid(E0, E1, E2, E3, NULL)
//# pattern-4, witnesses: 5
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- ib_find_cached_gid(E0, E1, &E2, E3)
+ ib_find_cached_gid(E0, E1, NULL, &E2, E3)
