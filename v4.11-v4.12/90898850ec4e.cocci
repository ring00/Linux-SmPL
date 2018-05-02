//# pattern-8, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier ah;
identifier ah_attr;
identifier r0.fn;
@@
- int fn(struct ib_ah * ah, struct ib_ah_attr * ah_attr)
+ int fn(struct ib_ah * ah, struct rdma_ah_attr * ah_attr)
 { ... }
