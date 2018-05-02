//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier arg;
identifier arg_set;
identifier error;
identifier r0.fn;
identifier value;
@@
- int fn(struct dm_arg * arg, struct dm_arg_set * arg_set, unsigned int * value, char ** error)
+ int fn(const struct dm_arg * arg, struct dm_arg_set * arg_set, unsigned int * value, char ** error)
 { ... }
