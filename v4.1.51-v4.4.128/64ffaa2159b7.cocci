//# pattern-2, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
expression E3;
identifier PV4;
@@
- mlx5_buf_alloc(E0, E1, E2 * E3, &PV4->buf)
+ mlx5_buf_alloc(E0, E1, &PV4->buf)
