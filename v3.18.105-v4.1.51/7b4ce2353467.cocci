//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct rhashtable_params i = {
    .mutex_is_held = fn,
};
@@
identifier r0.fn;
@@
- int fn()
+ int fn(void * parent)
 { ... }
