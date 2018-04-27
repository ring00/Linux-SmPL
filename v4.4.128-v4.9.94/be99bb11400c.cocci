//# pattern-1, witnesses: 4
@@
expression E0;
@@
- E0.wr_id = ctxt
+ E0.wr_cqe = &ctxt->cqe
//# pattern-3, witnesses: 3
@@
@@
- ctxt->wr_op = IB_WR_SEND
+ ctxt->cqe.done = svc_rdma_wc_send
