//# pattern-10, witnesses: 3
@@
expression E0;
expression EC1;
@@
- E0->caps.gen.flags & EC1
+ MLX5_CAP_GEN(E0)
//# pattern-13, witnesses: 2
@@
@@
- struct mlx5_general_caps * gen = gen;
- gen = &dev->mdev->caps.gen;
- if (qp->sq.wqe_cnt > gen->max_wqes) {
- }
+ if (qp->sq.wqe_cnt > 1 << MLX5_CAP_GEN(dev->mdev)) {
+ }
