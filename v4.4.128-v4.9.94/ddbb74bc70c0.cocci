//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier cpu_dev;
identifier cpumask;
typedef cpumask_var_t;
identifier r0.fn;
@@
- int fn(struct device * cpu_dev, cpumask_var_t cpumask)
+ int fn(struct device * cpu_dev, struct cpumask * cpumask)
 { ... }
//# pattern-3, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier cpumask;
typedef cpumask_var_t;
identifier r1.fn;
@@
- int fn(cpumask_var_t cpumask)
+ int fn(const struct cpumask * cpumask)
 { ... }
