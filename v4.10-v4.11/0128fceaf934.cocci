//# pattern-3, witnesses: 8
@@
expression E0;
expression E1;
@@
- hfi1_copy_sge(&qp->r_sge, E0, E1, 1, 0)
+ hfi1_copy_sge(&qp->r_sge, E0, E1, true, false)
//# pattern-7, witnesses: 4
@@
expression E1;
expression ME0;
@@
- hfi1_copy_sge(&ME0, data, E1, 0, 0)
+ hfi1_copy_sge(&ME0, data, E1, false, false)
//# pattern-17, witnesses: 2
@@
@@
- hfi1_skip_sge(&qp->r_sge, sizeof(unsigned long), 1)
+ hfi1_skip_sge(&qp->r_sge, sizeof(unsigned long), true)
//# pattern-19, witnesses: 2
@@
expression E0;
@@
- E0 = ibpd_to_rvtpd(qp->ibqp.pd)->user
+ E0 = rvt_is_user_qp(qp)
