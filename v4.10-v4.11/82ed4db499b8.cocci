//# pattern-59, witnesses: 17
@@
expression E0;
@@
- E0->cmd
+ scsi_req(E0)->cmd
//# pattern-1, witnesses: 9
@@
expression E0;
@@
- E0->resid_len
+ scsi_req(E0)->resid_len
//# pattern-20, witnesses: 4
@@
expression E0;
expression E1;
@@
- E0->resid_len = E1;
//# pattern-23, witnesses: 3
@@
expression list listE0;
@@
- blk_rq_set_block_pc(listE0)
+ scsi_req_init(listE0)
//# pattern-7, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
@@
- bsg_map_hdr(bd, &E0, E1, E2)
+ bsg_map_hdr(bd, &E0, E1)
//# pattern-19, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier r0.fn;
identifier req;
@@
 void fn(struct request * req)
 {
     <...
- if (unlikely(blk_bidi_rq)) {
- req->next_rq->resid_len = blk_rq_bytes(req->next_rq);
- }
     ...>
 }
//# pattern-26, witnesses: 2
@@
@@
- rq->resid_len
+ scsi_req(rq)->resid_len
//# pattern-48, witnesses: 2
@@
@@
- rq->sense_len = 0;
//# pattern-52, witnesses: 2
@@
@@
- rq->cmd = rq->__cmd;
//# pattern-65, witnesses: 2
@@
@@
- rq->sense_len
+ req->sense_len
