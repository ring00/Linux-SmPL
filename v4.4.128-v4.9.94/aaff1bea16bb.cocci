//# pattern-1, witnesses: 2
@@
expression E0;
@@
- __mlx5_create_flow_table(ns, E0, prio, max_fte, level)
+ __mlx5_create_flow_table(ns, FS_FT_OP_MOD_NORMAL, E0, prio, max_fte, level)
