//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
@@
- mlx4_qp_reserve_range(E0, 1, 1, E1, 0)
+ mlx4_qp_reserve_range(E0, 1, 1, E1, MLX4_RESERVE_A0_QP)
