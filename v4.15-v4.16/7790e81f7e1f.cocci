//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression EC0;
identifier d;
identifier r0.fn;
@@
 int fn(struct lirc_dev * d)
 {
     <...
- d->attached = EC0;
     ...>
 }
//# pattern-4, witnesses: 2
@@
@@
- struct lirc_dev * d = rcdev->lirc_dev;
- if (!d->attached) {
- }
+ if (!rcdev->registered) {
+ }
//# pattern-7, witnesses: 2
@@
@@
- d->attached
+ rcdev->registered
