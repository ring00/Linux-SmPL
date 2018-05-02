//# pattern-1, witnesses: 12
@@
expression E0;
expression IL1;
@@
- if (!E0) {
- return -IL1;
- }
//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression IL0;
identifier dev;
@@
 int rc_register_device(struct rc_dev * dev)
 {
     <...
- atomic_set(&dev->initialized, IL0);
     ...>
 }
