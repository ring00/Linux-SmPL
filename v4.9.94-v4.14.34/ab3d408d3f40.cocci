//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier ops;
identifier r0.fn;
@@
- void fn(struct dsa_switch_ops * ops)
+ void fn(struct dsa_switch_driver * drv)
 {
     <...
- ops->list
+ drv->list
     ...>
 }
