//# pattern-1, witnesses: 2
@@
expression E0;
@@
- ib_dereg_mr(E0->mr);
//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
@@
- E0->mr = ib_get_dma_mr(E1->pd, IB_ACCESS_LOCAL_WRITE);
- if (IS_ERR(E2->mr)) {
- }
//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier base_version;
identifier data_len;
identifier gfp_mask;
typedef gfp_t;
identifier hdr_len;
identifier mad_agent;
identifier pkey_index;
identifier remote_qpn;
identifier rmpp_active;
typedef u16;
typedef u32;
typedef u8;
@@
 struct ib_mad_send_buf * ib_create_send_mad(struct ib_mad_agent * mad_agent, u32 remote_qpn, u16 pkey_index, int rmpp_active, int hdr_len, int data_len, gfp_t gfp_mask, u8 base_version)
 {
     <...
- mad_agent->mr->lkey
+ mad_agent->qp->pd->local_dma_lkey
     ...>
 }
