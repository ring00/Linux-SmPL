//# pattern-15, witnesses: 2
@r0@
identifier i, fn;
@@
struct blk_mq_ops i = {
    .init_request = fn,
};
@@
expression E0;
identifier data;
identifier hctx_idx;
identifier numa_node;
identifier r0.fn;
identifier req;
identifier rq_idx;
@@
- int fn(void * data, struct request * req, unsigned int hctx_idx, unsigned int rq_idx, unsigned int numa_node)
+ int fn(struct blk_mq_tag_set * set, struct request * req, unsigned int hctx_idx, unsigned int numa_node)
 {
     <...
- nvme_loop_init_iod(data, blk_mq_rq_to_pdu(req), E0)
+ nvme_loop_init_iod(set->driver_data, blk_mq_rq_to_pdu(req), E0)
     ...>
 }
//# pattern-16, witnesses: 2
@r1@
identifier i, fn;
@@
struct blk_mq_ops i = {
    .init_request = fn,
};
@@
expression E0;
identifier hctx_idx;
identifier numa_node;
identifier r1.fn;
identifier rq;
identifier set;
@@
 int fn(struct blk_mq_tag_set * set, struct request * rq, unsigned int hctx_idx, unsigned int numa_node)
 {
     <...
- __nvme_rdma_init_request(data, rq, E0)
+ __nvme_rdma_init_request(set->driver_data, rq, E0)
     ...>
 }
//# pattern-20, witnesses: 2
@r2@
identifier i, fn;
@@
struct blk_mq_ops i = {
    .exit_request = fn,
};
@@
expression E0;
identifier data;
identifier hctx_idx;
identifier r2.fn;
identifier rq;
identifier rq_idx;
@@
- void fn(void * data, struct request * rq, unsigned int hctx_idx, unsigned int rq_idx)
+ void fn(struct blk_mq_tag_set * set, struct request * rq, unsigned int hctx_idx)
 {
     <...
- __nvme_rdma_exit_request(data, rq, E0)
+ __nvme_rdma_exit_request(set->driver_data, rq, E0)
     ...>
 }
//# pattern-21, witnesses: 2
@r3@
identifier i, fn;
@@
struct blk_mq_ops i = {
    .init_request = fn,
};
@@
identifier hctx_idx;
identifier numa_node;
identifier r3.fn;
identifier rq;
identifier set;
@@
 int fn(struct blk_mq_tag_set * set, struct request * rq, unsigned int hctx_idx, unsigned int numa_node)
 { ... }
