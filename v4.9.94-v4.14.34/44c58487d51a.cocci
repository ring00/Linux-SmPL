//# pattern-5, witnesses: 7
@@
identifier PV0;
@@
- PV0->dmac
+ PV0->roce.dmac
//# pattern-13, witnesses: 3
@@
identifier PV0;
@@
- PV0->ah_attr
+ PV0->ah_attr.roce
//# pattern-27, witnesses: 2
@@
identifier ah;
identifier alt;
identifier attr;
identifier attr_mask;
typedef bool;
identifier dev;
identifier path;
identifier path_flags;
identifier port;
identifier qp;
typedef u32;
typedef u8;
@@
 int mlx5_set_path(struct mlx5_ib_dev * dev, struct mlx5_ib_qp * qp, const struct rdma_ah_attr * ah, struct mlx5_qp_path * path, u8 port, int attr_mask, u32 path_flags, const struct ib_qp_attr * attr, bool alt)
 {
     <...
- ah->dmac
+ ah->roce.dmac
     ...>
 }
