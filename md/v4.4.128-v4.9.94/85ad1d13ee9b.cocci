//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier force_change;
identifier mddev;
@@
 void md_update_sb(struct mddev * mddev, int force_change)
 {
     <...
- &mddev->lock;
     ...>
 }
