//# pattern-3, witnesses: 8
@@
expression E0;
@@
- E0->q_cnts
+ E0->cnts
//# pattern-5, witnesses: 2
@@
expression list listE0;
@@
- mlx5_ib_dealloc_q_counters(listE0)
+ mlx5_ib_dealloc_counters(listE0)
