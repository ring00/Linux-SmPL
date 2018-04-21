//# pattern-5, witnesses: 4
@@
expression E0;
expression E1;
@@
- E0->cmd_type = E1;
//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier bio;
identifier rq;
@@
 int blk_rq_append_bio(struct request * rq, struct bio * bio)
 { ... }
//# pattern-11, witnesses: 2
@@
@@
- if (iter->type & WRITE) {
- bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
- }
