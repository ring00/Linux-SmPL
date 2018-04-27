//# pattern-21, witnesses: 10
@@
expression E0;
@@
- E0.dlid
+ rdma_ah_get_dlid(&E0)
//# pattern-34, witnesses: 5
@@
expression ME0;
@@
- ME0.sl
+ rdma_ah_get_sl(&ME0)
//# pattern-24, witnesses: 4
@@
expression E1;
expression ME0;
expression ME2;
@@
- ME0.ah_flags & E1
+ rdma_ah_get_ah_flags(&ME2) & E1
//# pattern-41, witnesses: 4
@@
expression E0;
identifier is_fecn;
identifier qp;
identifier rcd;
@@
 void hfi1_send_rc_ack(struct hfi1_ctxtdata * rcd, struct rvt_qp * qp, int is_fecn)
 {
     <...
- E0 | qp->remote_ah_attr.src_path_bits
+ E0 | rdma_ah_get_path_bits(&qp->remote_ah_attr)
     ...>
 }
//# pattern-2, witnesses: 3
@@
identifier PV0;
@@
- PV0->port_num
+ rdma_ah_get_port_num(PV0)
//# pattern-3, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- ah_attr->ah_flags = IB_AH_GRH;
- ah_attr->grh.dgid = E0;
- ah_attr->grh.sgid_index = gid_index;
- ah_attr->grh.flow_label = E1;
- ah_attr->grh.hop_limit = E2;
- ah_attr->grh.traffic_class = E3;
+ rdma_ah_set_grh(ah_attr, &E0, E1, gid_index, E2, E3);
//# pattern-11, witnesses: 2
@@
@@
- &ah_attr->grh.dgid
+ &grh->dgid
//# pattern-18, witnesses: 2
@@
expression E0;
@@
- E0->grh.sgid_index
+ grh->sgid_index
//# pattern-29, witnesses: 2
@@
expression E1;
identifier PV0;
@@
- PV0->ah_flags & E1
+ rdma_ah_get_ah_flags(PV0) & E1
