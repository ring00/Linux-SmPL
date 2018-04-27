//# pattern-1, witnesses: 3
@@
expression E0;
expression E1;
@@
- cache_fresh_locked(E0, E1)
+ cache_fresh_locked(E0, E1, detail)
//# pattern-4, witnesses: 2
@@
expression V0;
@@
- cache_init(V0)
+ cache_init(V0, detail)
