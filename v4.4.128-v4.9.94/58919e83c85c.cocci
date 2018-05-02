//# pattern-1, witnesses: 2
@r0@
identifier fn;
expression P0, P1;
@@
cpufreq_add_update_util_hook(P0, P1, fn)
@@
identifier data;
identifier max;
identifier r0.fn;
identifier time;
typedef u64;
identifier util;
@@
- void fn(struct update_util_data * data, u64 time, unsigned long util, unsigned long max)
+ void fn(struct update_util_data * data, u64 time, unsigned int flags)
 { ... }
