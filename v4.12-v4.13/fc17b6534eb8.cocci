//# pattern-16, witnesses: 4
@@
identifier bd;
typedef blk_status_t;
identifier fn;
identifier hctx;
@@
- int fn(struct blk_mq_hw_ctx * hctx, const struct blk_mq_queue_data * bd)
+ blk_status_t fn(struct blk_mq_hw_ctx * hctx, const struct blk_mq_queue_data * bd)
 {
     <...
- return BLK_MQ_RQ_QUEUE_OK;
+ return BLK_STS_OK;
     ...>
 }
//# pattern-15, witnesses: 3
@@
identifier bd;
typedef blk_status_t;
identifier fn;
identifier hctx;
@@
 blk_status_t fn(struct blk_mq_hw_ctx * hctx, const struct blk_mq_queue_data * bd)
 {
     <...
- return BLK_MQ_RQ_QUEUE_BUSY;
+ return BLK_STS_RESOURCE;
     ...>
 }
//# pattern-21, witnesses: 3
@@
typedef blk_status_t;
identifier fn;
identifier hctx;
identifier qd;
@@
 blk_status_t fn(struct blk_mq_hw_ctx * hctx, const struct blk_mq_queue_data * qd)
 {
     <...
- return BLK_MQ_RQ_QUEUE_BUSY;
+ return BLK_STS_RESOURCE;
     ...>
 }
//# pattern-23, witnesses: 3
@@
@@
- BLK_MQ_RQ_QUEUE_BUSY
+ BLK_STS_RESOURCE
//# pattern-28, witnesses: 3
@@
identifier bd;
typedef blk_status_t;
identifier fn;
identifier hctx;
@@
 blk_status_t fn(struct blk_mq_hw_ctx * hctx, const struct blk_mq_queue_data * bd)
 {
     <...
- return BLK_MQ_RQ_QUEUE_OK;
+ return BLK_STS_OK;
     ...>
 }
//# pattern-10, witnesses: 2
@@
identifier bd;
typedef blk_status_t;
identifier fn;
identifier hctx;
@@
 blk_status_t fn(struct blk_mq_hw_ctx * hctx, const struct blk_mq_queue_data * bd)
 {
     <...
- return BLK_MQ_RQ_QUEUE_ERROR;
+ return BLK_STS_IOERR;
     ...>
 }
//# pattern-13, witnesses: 2
@@
identifier bd;
typedef blk_status_t;
identifier fn;
identifier hctx;
@@
 blk_status_t fn(struct blk_mq_hw_ctx * hctx, const struct blk_mq_queue_data * bd)
 {
     <...
- return BLK_MQ_RQ_QUEUE_ERROR;
+ return BLK_STS_IOERR;
     ...>
 }
//# pattern-14, witnesses: 2
@r0@
identifier i, fn;
@@
struct blk_mq_ops i = {
    .queue_rq = fn,
};
@@
identifier bd;
typedef blk_status_t;
identifier hctx;
@@
 blk_status_t virtio_queue_rq(struct blk_mq_hw_ctx * hctx, const struct blk_mq_queue_data * bd)
 {
     <...
- return BLK_MQ_RQ_QUEUE_ERROR;
+ return BLK_STS_IOERR;
     ...>
 }
//# pattern-17, witnesses: 2
@@
identifier s;
@@
- int s = {
+ blk_status_t s = {
 };
//# pattern-31, witnesses: 2
@@
typedef blk_status_t;
identifier fn;
identifier hctx;
identifier qd;
@@
 blk_status_t fn(struct blk_mq_hw_ctx * hctx, const struct blk_mq_queue_data * qd)
 {
     <...
- return BLK_MQ_RQ_QUEUE_OK;
+ return BLK_STS_OK;
     ...>
 }
//# pattern-34, witnesses: 2
@@
@@
- BLK_MQ_RQ_QUEUE_ERROR
+ BLK_STS_IOERR
