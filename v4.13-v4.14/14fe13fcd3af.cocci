//# pattern-2, witnesses: 2
@@
identifier fn;
identifier qp;
identifier wqe;
@@
 int fn(struct rvt_qp * qp, struct rvt_rwqe * wqe)
 {
     <...
- rvt_lkey_ok(rkt, pd, , &wqe->sg_list[i], IB_ACCESS_LOCAL_WRITE)
+ rvt_lkey_ok(rkt, pd, , NULL, &wqe->sg_list[i], IB_ACCESS_LOCAL_WRITE)
     ...>
 }
