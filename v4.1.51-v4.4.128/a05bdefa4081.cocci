//# pattern-2, witnesses: 3
@@
expression E0;
expression E1;
@@
- mlx5_query_port_ptys(E0, out, sizeof(unsigned long), E1)
+ mlx5_query_port_ptys(E0, out, sizeof(unsigned long), E1, 1)
