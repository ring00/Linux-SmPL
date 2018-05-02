//# pattern-2, witnesses: 92
@@
expression E0;
@@
- E0->drv
+ E0->ops
//# pattern-7, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier drv;
identifier r0.fn;
@@
- void fn(struct dsa_switch_driver * drv)
+ void fn(struct dsa_switch_ops * ops)
 {
     <...
- drv->list
+ ops->list
     ...>
 }
