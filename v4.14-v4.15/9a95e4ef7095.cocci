//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
typedef blk_mq_req_flags_t;
identifier flags;
identifier op;
identifier q;
identifier r0.fn;
@@
- struct request * fn(struct request_queue * q, unsigned int op, unsigned int flags)
+ struct request * fn(struct request_queue * q, unsigned int op, blk_mq_req_flags_t flags)
 { ... }
