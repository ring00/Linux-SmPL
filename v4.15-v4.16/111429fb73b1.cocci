//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier d;
@@
 void lirc_unregister_device(struct lirc_dev * d)
 {
     <...
- d->mutex
+ rcdev->lock
     ...>
 }
