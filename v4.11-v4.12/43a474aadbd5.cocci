//# pattern-2, witnesses: 2
@@
expression E0;
@@
- rvt_qp_swqe_complete(qp, wqe, E0)
+ rvt_qp_swqe_complete(qp, wqe, ib_qib_wc_opcode[wqe->wr.opcode], E0)
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- rvt_qp_swqe_complete(qp, wqe, E0)
+ rvt_qp_swqe_complete(qp, wqe, ib_hfi1_wc_opcode[wqe->wr.opcode], E0)
