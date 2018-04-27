//# pattern-10, witnesses: 5
@@
expression E1;
expression E2;
expression EC0;
@@
- gnet_stats_copy(d, EC0, E1, E2)
+ gnet_stats_copy(d, EC0, E1, E2, TCA_STATS_PAD)
