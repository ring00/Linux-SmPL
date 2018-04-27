//# pattern-2, witnesses: 85
@@
expression E0;
expression E1;
@@
- NET_INC_STATS_BH(E0, E1)
+ __NET_INC_STATS(E0, E1)
//# pattern-1, witnesses: 5
@@
expression E0;
expression E2;
expression EC1;
@@
- NET_ADD_STATS_BH(E0, EC1, E2)
+ __NET_ADD_STATS(E0, EC1, E2)
