//# pattern-10, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression ME0;
identifier device;
@@
 void ib_unregister_device(struct ib_device * device)
 {
     <...
- kfree(ME0);
     ...>
 }
