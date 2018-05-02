//# pattern-1, witnesses: 2
@@
@@
- GFP_KERNEL
+ false
//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
typedef bool;
identifier gfp;
typedef gfp_t;
identifier q;
identifier reserved;
identifier rw;
@@
- struct request * blk_mq_alloc_request(struct request_queue * q, int rw, gfp_t gfp, bool reserved)
+ struct request * blk_mq_alloc_request(struct request_queue * q, int rw, unsigned int flags)
 {
     <...
- blk_mq_set_alloc_data(&alloc_data, q, E0, reserved, ctx, hctx)
+ blk_mq_set_alloc_data(&alloc_data, q, flags, ctx, hctx)
     ...>
 }
//# pattern-6, witnesses: 2
@@
expression E1;
expression E2;
expression EC3;
expression ME0;
@@
- blk_mq_alloc_request(ME0, E1, E2, EC3)
+ blk_mq_alloc_request(ME0, E1, EC3)
//# pattern-16, witnesses: 2
@@
expression E0;
expression E1;
@@
- blk_mq_alloc_request(E0, E1, GFP_KERNEL, false)
+ blk_mq_alloc_request(E0, E1, 0)
