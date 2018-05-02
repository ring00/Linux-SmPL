//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression ME0;
expression ME1;
identifier dst;
identifier src;
@@
- void ib_copy_qp_attr_to_user(struct ib_uverbs_qp_attr * dst, struct ib_qp_attr * src)
+ void ib_copy_qp_attr_to_user(struct ib_device * device, struct ib_uverbs_qp_attr * dst, struct ib_qp_attr * src)
 {
     <...
- ib_copy_ah_attr_to_user(&ME0, &ME1)
+ ib_copy_ah_attr_to_user(device, &ME0, &ME1)
     ...>
 }
//# pattern-5, witnesses: 2
@@
@@
- ib_copy_qp_attr_to_user(&resp, &qp_attr)
+ ib_copy_qp_attr_to_user(ctx->cm_id->device, &resp, &qp_attr)
