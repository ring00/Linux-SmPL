//# pattern-164, witnesses: 42
@@
@@
- wr->wr.rdma.remote_addr
+ rdma_wr(wr)->remote_addr
//# pattern-165, witnesses: 24
@@
@@
- (wr->wr.rdma.rkey)
+ (rdma_wr(wr)->rkey)
//# pattern-200, witnesses: 12
@@
@@
- wr->wr.fast_reg.rkey
+ fast_reg_wr(wr)->rkey
//# pattern-392, witnesses: 10
@@
identifier li;
identifier seg;
identifier wr;
identifier writ;
@@
 void set_mkey_segment(struct mlx5_mkey_seg * seg, struct ib_send_wr * wr, int li, int * writ)
 {
     <...
- (wr->wr.fast_reg.iova_start)
+ (fast_reg_wr(wr)->iova_start)
     ...>
 }
//# pattern-442, witnesses: 10
@@
identifier li;
identifier seg;
identifier wr;
identifier writ;
@@
 void set_mkey_segment(struct mlx5_mkey_seg * seg, struct ib_send_wr * wr, int li, int * writ)
 {
     <...
- (wr->wr.fast_reg.length)
+ (fast_reg_wr(wr)->length)
     ...>
 }
//# pattern-107, witnesses: 6
@@
identifier PV0;
@@
- PV0->wr.rdma.remote_addr
+ rdma_wr(PV0)->remote_addr
//# pattern-201, witnesses: 6
@@
expression E0;
identifier dseg;
identifier wr;
@@
 void set_datagram_seg(struct mlx5_wqe_datagram_seg * dseg, struct ib_send_wr * wr)
 {
     <...
- wr->wr.ud.remote_qpn | E0
+ ud_wr(wr)->remote_qpn | E0
     ...>
 }
//# pattern-202, witnesses: 6
@@
identifier dseg;
identifier wr;
@@
 void set_datagram_seg(struct mlx5_wqe_datagram_seg * dseg, struct ib_send_wr * wr)
 {
     <...
- (wr->wr.ud.remote_qkey)
+ (ud_wr(wr)->remote_qkey)
     ...>
 }
//# pattern-275, witnesses: 6
@@
expression E0;
identifier dseg;
identifier mdev;
identifier pd;
identifier wr;
identifier writ;
@@
 void set_frwr_pages(struct mlx5_wqe_data_seg * dseg, struct ib_send_wr * wr, struct mlx5_core_dev * mdev, struct mlx5_ib_pd * pd, int writ)
 {
     <...
- E0 * wr->wr.fast_reg.page_list_len
+ E0 * fast_reg_wr(wr)->page_list_len
     ...>
 }
//# pattern-332, witnesses: 6
@@
identifier bad_wr;
identifier ibqp;
identifier wr;
@@
 int mlx5_ib_post_send(struct ib_qp * ibqp, struct ib_send_wr * wr, struct ib_send_wr ** bad_wr)
 {
     <...
- (wr->wr.fast_reg.rkey)
+ (umr_wr(wr)->mkey)
     ...>
 }
//# pattern-443, witnesses: 6
@@
expression E0;
identifier li;
identifier seg;
identifier wr;
identifier writ;
@@
 void set_mkey_segment(struct mlx5_mkey_seg * seg, struct ib_send_wr * wr, int li, int * writ)
 {
     <...
- wr->wr.fast_reg.page_list_len + E0
+ fast_reg_wr(wr)->page_list_len + E0
     ...>
 }
//# pattern-104, witnesses: 4
@@
identifier s;
@@
 struct mlx5_umr_wr * s = {
 };
//# pattern-108, witnesses: 4
@@
identifier PV0;
@@
- PV0->wr.rdma.rkey
+ rdma_wr(PV0)->rkey
//# pattern-113, witnesses: 4
@@
expression V0;
identifier bad_wr;
identifier fn;
identifier ibqp;
identifier wr;
@@
 int fn(struct ib_qp * ibqp, struct ib_send_wr * wr, struct ib_send_wr ** bad_wr)
 {
     <...
- set_raddr_seg(V0, wr->wr.rdma.remote_addr, wr->wr.rdma.rkey)
+ set_raddr_seg(V0, rdma_wr(wr)->remote_addr, rdma_wr(wr)->rkey)
     ...>
 }
//# pattern-151, witnesses: 4
@@
expression E0;
@@
- E0->send_wr
+ E0->send_wr.wr
//# pattern-376, witnesses: 4
@@
expression E0;
@@
- E0->send_wr.wr.ud
+ E0->send_wr
//# pattern-112, witnesses: 3
@@
identifier bad_wr;
identifier fn;
identifier ibqp;
identifier wr;
@@
 int fn(struct ib_qp * ibqp, struct ib_send_wr * wr, struct ib_send_wr ** bad_wr)
 {
     <...
- set_raddr_seg(wqe, wr->wr.rdma.remote_addr, wr->wr.rdma.rkey)
+ set_raddr_seg(wqe, rdma_wr(wr)->remote_addr, rdma_wr(wr)->rkey)
     ...>
 }
//# pattern-27, witnesses: 2
@@
@@
- wr->wr.ud.ah
+ ud_wr(wr)->ah
//# pattern-90, witnesses: 2
@@
@@
- wr->wr.fast_reg.page_list_len
+ fast_reg_wr(wr)->page_list_len
//# pattern-110, witnesses: 2
@@
identifier bad_wr;
identifier fn;
identifier ibqp;
identifier wr;
@@
 int fn(struct ib_qp * ibqp, struct ib_send_wr * wr, struct ib_send_wr ** bad_wr)
 {
     <...
- build_mlx_header(dev, to_msqp(qp), ind, wr, wqe - sizeof(unsigned long), wqe)
+ build_mlx_header(dev, to_msqp(qp), ind, ud_wr(wr), wqe - sizeof(unsigned long), wqe)
     ...>
 }
//# pattern-111, witnesses: 2
@@
@@
- mad_send_wr->send_wr
+ mad_send_wr->send_wr.wr
//# pattern-114, witnesses: 2
@@
identifier bad_wr;
identifier fn;
identifier ibqp;
identifier wr;
@@
 int fn(struct ib_qp * ibqp, struct ib_send_wr * wr, struct ib_send_wr ** bad_wr)
 {
     <...
- set_raddr_seg(wqe, wr->wr.atomic.remote_addr, wr->wr.atomic.rkey)
+ set_raddr_seg(wqe, atomic_wr(wr)->remote_addr, atomic_wr(wr)->rkey)
     ...>
 }
//# pattern-115, witnesses: 2
@@
identifier bad_wr;
identifier fn;
identifier ibqp;
identifier wr;
@@
 int fn(struct ib_qp * ibqp, struct ib_send_wr * wr, struct ib_send_wr ** bad_wr)
 {
     <...
- set_atomic_seg(wqe, wr)
+ set_atomic_seg(wqe, atomic_wr(wr))
     ...>
 }
//# pattern-144, witnesses: 2
@@
identifier dseg;
identifier mdev;
identifier pd;
identifier wr;
identifier writ;
@@
 void set_frwr_pages(struct mlx5_wqe_data_seg * dseg, struct ib_send_wr * wr, struct mlx5_core_dev * mdev, struct mlx5_ib_pd * pd, int writ)
 {
     <...
- wr->wr.fast_reg.page_list
+ fast_reg_wr(wr)->page_list
     ...>
 }
//# pattern-167, witnesses: 2
@@
identifier mr;
identifier npages;
identifier start_page_index;
typedef u64;
identifier zap;
@@
 int mlx5_ib_update_mtt(struct mlx5_ib_mr * mr, u64 start_page_index, int npages, int zap)
 {
     <...
- struct ib_send_wr wr = wr;
- struct mlx5_umr_wr * umrwr = &wr.wr.fast_reg;
+ struct ib_send_wr * bad = bad;
+ struct mlx5_umr_wr wr = wr;
     ...>
 }
//# pattern-206, witnesses: 2
@@
identifier bad_wr;
identifier ibqp;
identifier wr;
@@
 int mlx4_ib_post_send(struct ib_qp * ibqp, struct ib_send_wr * wr, struct ib_send_wr ** bad_wr)
 {
     <...
- build_sriov_qp0_header(to_msqp(qp), wr, ctrl, &seglen)
+ build_sriov_qp0_header(to_msqp(qp), ud_wr(wr), ctrl, &seglen)
     ...>
 }
//# pattern-207, witnesses: 2
@@
@@
- wr->wr.ud.ah
+ ud_wr(wr)->ah
//# pattern-314, witnesses: 2
@@
expression E1;
expression ME0;
@@
- wr.wr.ud.ah = ah;
- ME0 = E1;
+ wr.ah = ah;
+ ME0 = E1;
//# pattern-316, witnesses: 2
@@
expression E1;
expression ME0;
@@
- ME0 = E1;
- wr.sg_list = &list;
+ ME0 = E1;
+ wr.wr.sg_list = &list;
//# pattern-317, witnesses: 2
@@
expression E0;
expression E2;
expression V1;
@@
- wr.wr.ud.remote_qkey = E0;
- wr.wr_id = V1 | MLX4_TUN_SET_WRID_QPN(E2);
+ wr.remote_qkey = E0;
+ wr.wr.wr_id = V1 | MLX4_TUN_SET_WRID_QPN(E2);
//# pattern-318, witnesses: 2
@@
expression E0;
@@
- wr.wr.ud.remote_qpn = E0;
- wr.next = NULL;
+ wr.remote_qpn = E0;
+ wr.wr.next = NULL;
//# pattern-333, witnesses: 2
@@
identifier bad_wr;
identifier ibqp;
identifier wr;
@@
 int mlx5_ib_post_send(struct ib_qp * ibqp, struct ib_send_wr * wr, struct ib_send_wr ** bad_wr)
 {
     <...
- wr->wr.sig_handover.sig_attrs
+ sig_handover_wr(wr)->sig_attrs
     ...>
 }
//# pattern-457, witnesses: 2
@@
identifier bad_wr;
identifier ibqp;
identifier wr;
@@
 int mlx4_ib_post_send(struct ib_qp * ibqp, struct ib_send_wr * wr, struct ib_send_wr ** bad_wr)
 {
     <...
- set_datagram_seg(wqe, wr)
+ set_datagram_seg(wqe, ud_wr(wr))
     ...>
 }
//# pattern-460, witnesses: 2
@@
@@
- wr.send_flags
+ wr.wr.send_flags
