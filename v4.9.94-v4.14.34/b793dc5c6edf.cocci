//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier class_attr;
identifier ns;
identifier r0.fn;
@@
- void fn(struct class_attribute * class_attr, const void * ns)
+ void fn(const struct class_attribute * class_attr, const void * ns)
 { ... }
