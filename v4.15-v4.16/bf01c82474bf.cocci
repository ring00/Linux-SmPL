//# pattern-3, witnesses: 3
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier d;
identifier r0.fn;
@@
 void fn(struct lirc_dev * d)
 {
     <...
- d->name
+ rcdev->driver_name
     ...>
 }
