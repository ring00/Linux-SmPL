//# pattern-5, witnesses: 4
@@
identifier PV0;
@@
- blk_rq_tagged(PV0->request)
+ (PV0->flags & SCMD_TAGGED)
//# pattern-2, witnesses: 2
@@
identifier PV0;
statement S1;
@@
- if (blk_rq_tagged(PV0)) { S1 }
+ if (PV0->cmd_flags & REQ_QUEUED) { S1 }
//# pattern-4, witnesses: 2
@@
@@
- REQ_QUEUED
+ SCMD_TAGGED
//# pattern-6, witnesses: 2
@r0@
identifier i, fn;
@@
struct blk_mq_ops i = {
    .queue_rq = fn,
};
@@
typedef bool;
identifier hctx;
identifier last;
identifier req;
@@
 int scsi_queue_rq(struct blk_mq_hw_ctx * hctx, struct request * req, bool last)
 {
     <...
- req->cmd_flags
+ cmd->flags
     ...>
 }
