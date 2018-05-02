//# pattern-3, witnesses: 5
@@
@@
+ ib_get_slid(hdr)
//# pattern-5, witnesses: 5
@@
expression E0;
@@
-  & 3
+ ib_get_lnh(E0)
//# pattern-9, witnesses: 5
@@
expression E0;
@@
- E0 =  >> 20 & 3
+ E0 = ib_bth_get_pad(ohdr)
//# pattern-6, witnesses: 4
@@
expression V0;
@@
+ ib_get_dlid(V0)
//# pattern-4, witnesses: 3
@@
expression E0;
expression E1;
@@
- E0 =  >> 24
+ E0 = ib_bth_get_opcode(E1)
//# pattern-8, witnesses: 2
@@
expression E0;
expression V1;
@@
- E0 = 
+ E0 = ib_get_slid(V1)
//# pattern-11, witnesses: 2
@@
identifier bth0;
identifier has_grh;
identifier hdr;
identifier ibp;
identifier qp;
typedef u32;
@@
 int hfi1_ruc_check_hdr(struct hfi1_ibport * ibp, struct ib_header * hdr, int has_grh, struct rvt_qp * qp, u32 bth0)
 {
     <...
- hfi1_bad_pqkey(ibp, OPA_TRAP_BAD_P_KEY, bth0,  >> 4 & 15, 0, qp->ibqp.qp_num, , )
+ hfi1_bad_pqkey(ibp, OPA_TRAP_BAD_P_KEY, bth0, ib_get_sl(hdr), 0, qp->ibqp.qp_num, ib_get_slid(hdr), ib_get_dlid(hdr))
     ...>
 }
