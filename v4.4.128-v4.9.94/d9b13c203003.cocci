//# pattern-2, witnesses: 2
@@
identifier fn;
identifier ps;
identifier qp;
@@
 int fn(struct rvt_qp * qp, struct hfi1_pkt_state * ps)
 {
     <...
- if (wqe->wr.opcode == IB_WR_REG_MR) {
- err = rvt_fast_reg_mr(qp, wqe->reg_wr.mr, wqe->reg_wr.key, wqe->reg_wr.access);
- }
+ int local_ops = 0;
+ int err = 0;
+ if (!wqe->wr.send_flags & RVT_SEND_COMPLETION_ONLY) {
+ err = rvt_invalidate_rkey(qp, wqe->wr.ex.invalidate_rkey);
+ local_ops = 1;
+ }
+ if (local_ops) {
+ }
     ...>
 }
