//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier cpu;
identifier csd;
@@
- int smp_call_function_single_async(int cpu, struct call_single_data * csd)
+ int smp_call_function_single_async(int cpu, call_single_data_t * csd)
 { ... }
