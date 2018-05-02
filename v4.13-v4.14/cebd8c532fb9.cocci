//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier dev;
identifier r0.fn;
@@
- void fn(struct device * dev)
+ void fn(struct device * dev, unsigned int pipe_index)
 { ... }
