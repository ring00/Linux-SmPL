//# pattern-3, witnesses: 4
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression ME0;
identifier bdi;
@@
 int bdi_init(struct backing_dev_info * bdi)
 {
     <...
- ME0 = INIT_BW;
     ...>
 }
//# pattern-15, witnesses: 4
@@
@@
- wb->bdi
+ wb
//# pattern-21, witnesses: 3
@@
expression E0;
statement S1;
@@
- if (E0->dirty_exceeded) { S1 }
+ if (E0->wb.dirty_exceeded) { S1 }
