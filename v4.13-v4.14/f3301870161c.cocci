//# pattern-3, witnesses: 6
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
@@
- mlx4_qp_reserve_range(E0, E1, E2, E3, E4)
+ mlx4_qp_reserve_range(E0, E1, E2, E3, E4, MLX4_RES_USAGE_DRIVER)
//# pattern-1, witnesses: 3
@@
expression E0;
expression V1;
@@
- mlx4_counter_alloc(E0, &V1)
+ mlx4_counter_alloc(E0, &V1, MLX4_RES_USAGE_DRIVER)
//# pattern-2, witnesses: 2
@@
expression E0;
identifier caller_qp;
identifier dev;
identifier init_attr;
identifier pd;
identifier sqpn;
identifier udata;
@@
 int create_qp_common(struct mlx4_ib_dev * dev, struct ib_pd * pd, struct ib_qp_init_attr * init_attr, struct ib_udata * udata, int sqpn, struct mlx4_ib_qp ** caller_qp)
 {
     <...
- mlx4_qp_reserve_range(dev->dev, 1, 1, &qpn, E0)
+ mlx4_qp_reserve_range(dev->dev, 1, 1, &qpn, E0, qp->mqp.usage)
     ...>
 }
