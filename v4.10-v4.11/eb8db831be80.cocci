//# pattern-4, witnesses: 3
@@
expression ME0;
@@
- mempool_destroy(ME0);
//# pattern-6, witnesses: 2
@r0@
identifier i, fn;
@@
struct blk_mq_ops i = {
    .init_request = fn,
};
@@
identifier data;
identifier hctx_idx;
identifier numa_node;
identifier request_idx;
identifier rq;
@@
- int dm_mq_init_request(void * data, struct request * rq, unsigned int hctx_idx, unsigned int request_idx, unsigned int numa_node)
+ int dm_mq_init_request(void * data, struct request * rq, unsigned int hctx_idx, unsigned int request_idx, unsigned int numa_node)
 {
     <...
- struct mapped_device * md = data;
- struct dm_rq_target_io * tio = blk_mq_rq_to_pdu(rq);
     ...>
 }
//# pattern-12, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0->rq_pool = E1;
//# pattern-14, witnesses: 2
@@
expression F1;
identifier s;
@@
 struct target_type s = {
-    .map_rq = F1,
 };
