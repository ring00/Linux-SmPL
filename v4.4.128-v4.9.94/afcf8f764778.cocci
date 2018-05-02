//# pattern-2, witnesses: 2
@@
expression E0;
identifier ibpd;
identifier init_attr;
identifier udata;
@@
 struct ib_qp * rvt_create_qp(struct ib_pd * ibpd, struct ib_qp_init_attr * init_attr, struct ib_udata * udata)
 {
     <...
- init_attr->cap.max_send_wr + 1 * E0
+ sqsize * E0
     ...>
 }
