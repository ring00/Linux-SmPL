//# pattern-2, witnesses: 7
@@
expression list listE0;
@@
- qib_rc_error(listE0)
+ rvt_rc_error(listE0)
//# pattern-3, witnesses: 7
@@
expression list listE0;
@@
- hfi1_rc_error(listE0)
+ rvt_rc_error(listE0)
//# pattern-1, witnesses: 2
@@
@@
- qp->r_flags |= RVT_R_COMM_EST;
- if (qp->ibqp.event_handler) {
- struct ib_event ev = ev;
- ev.device = qp->ibqp.device;
- ev.element.qp = &qp->ibqp;
- ev.event = IB_EVENT_COMM_EST;
- qp->ibqp.event_handler(&ev, qp->ibqp.qp_context);
- }
+ rvt_comm_est(qp);
//# pattern-4, witnesses: 2
@@
expression list listE0;
@@
- qp_comm_est(listE0)
+ rvt_comm_est(listE0)
