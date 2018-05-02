//# pattern-1, witnesses: 12
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- (E0->dev->caps.qp0_tunnel[E1 - 1])
+ (E2->dev->caps.spec_qps[E3 - 1].qp0_tunnel)
//# pattern-19, witnesses: 6
@@
identifier dev;
identifier dseg;
identifier qpt;
identifier wr;
@@
 void set_tunnel_datagram_seg(struct mlx4_ib_dev * dev, struct mlx4_wqe_datagram_seg * dseg, struct ib_ud_wr * wr, enum mlx4_ib_qp_type qpt)
 {
     <...
- (dev->dev->caps.qp1_tunnel[port - 1])
+ (dev->dev->caps.spec_qps[port - 1].qp1_tunnel)
     ...>
 }
//# pattern-7, witnesses: 5
@@
expression E0;
expression E1;
@@
- E0->caps.qp0_proxy[E1]
+ E0->caps.spec_qps[E1].qp0_proxy
//# pattern-5, witnesses: 3
@@
@@
- kfree(dev->caps.qp0_qkey);
- kfree(dev->caps.qp0_tunnel);
- kfree(dev->caps.qp0_proxy);
- kfree(dev->caps.qp1_tunnel);
- kfree(dev->caps.qp1_proxy);
+ mlx4_slave_destroy_special_qp_cap(dev);
//# pattern-2, witnesses: 2
@@
@@
- dev->caps.qp0_qkey[i]
+ dev->caps.spec_qps[i].qp0_qkey
//# pattern-4, witnesses: 2
@@
expression E0;
identifier dev;
identifier func_cap;
identifier gen_or_port;
typedef u8;
@@
 int mlx4_QUERY_FUNC_CAP(struct mlx4_dev * dev, u8 gen_or_port, struct mlx4_func_cap * func_cap)
 {
     <...
- func_cap->qp0_qkey = E0
+ func_cap->spec_qps.qp0_qkey = E0
     ...>
 }
//# pattern-6, witnesses: 2
@@
expression E0;
@@
- dev->dev->caps.qp1_proxy[E0]
+ dev->dev->caps.spec_qps[E0].qp1_proxy
//# pattern-14, witnesses: 2
@@
expression ME0;
identifier dev;
@@
 int mlx4_init_qp_table(struct mlx4_dev * dev)
 {
     <...
- kfree(ME0);
     ...>
 }
