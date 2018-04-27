//# pattern-1, witnesses: 10
@@
expression E0;
expression E1;
expression E2;
@@
- ICMP6_INC_STATS_BH(E0, E1, E2)
+ __ICMP6_INC_STATS(E0, E1, E2)
