//# pattern-7, witnesses: 3
@@
expression E0;
identifier dev;
identifier fn;
@@
 int fn(struct mlx4_dev * dev)
 {
     <...
- E0[dev->caps.num_comp_vectors]
+ E0[MLX4_EQ_ASYNC]
     ...>
 }
//# pattern-21, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier collapsed;
identifier cq;
identifier db_rec;
identifier dev;
identifier mtt;
identifier nent;
identifier timestamp_en;
typedef u64;
identifier uar;
identifier vector;
@@
 int mlx4_cq_alloc(struct mlx4_dev * dev, int nent, struct mlx4_mtt * mtt, struct mlx4_uar * uar, u64 db_rec, struct mlx4_cq * cq, unsigned int vector, int collapsed, int timestamp_en)
 {
     <...
- E0[cq->vector]
+ E0[MLX4_CQ_TO_EQ_VECTOR(vector)]
     ...>
 }
