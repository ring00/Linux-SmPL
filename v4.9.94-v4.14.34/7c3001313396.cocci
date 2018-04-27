//# pattern-1, witnesses: 2
@@
@@
- unlikely(map_owner != xdp_prog)
+ unlikely(xdp_map_invalid(xdp_prog, map_owner))
//# pattern-3, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0 = NULL
+ E0 = E1
