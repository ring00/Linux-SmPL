//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct notifier_block i = {
    .notifier_call = fn,
};
@@
identifier args;
identifier nb;
identifier r0.fn;
identifier val;
@@
 int fn(struct notifier_block * nb, unsigned long val, void * args)
 {
     <...
- hyperv_report_panic(regs)
+ hyperv_report_panic(regs, val)
     ...>
 }
