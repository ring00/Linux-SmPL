//# pattern-4, witnesses: 2
@@
@@
- cqe_sz_to_mlx_sz(cqe_size)
+ cqe_sz_to_mlx_sz(cqe_size, cq->private_flags & MLX5_IB_CQ_PR_FLAGS_CQE_128_PAD)
