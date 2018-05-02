//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier np;
identifier r0.fn;
@@
- int fn(struct device_node * np)
+ int fn(const struct device_node * np)
 { ... }
