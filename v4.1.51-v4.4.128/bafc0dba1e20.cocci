//# pattern-5, witnesses: 10
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier bh;
identifier bio_flags;
identifier rw;
@@
- int _submit_bh(int rw, struct buffer_head * bh, unsigned long bio_flags)
+ int _submit_bh(int rw, struct buffer_head * bh, unsigned long bio_flags)
 {
     <...
- struct bio * bio = bio;
- bio = bio_alloc(GFP_NOIO, 1);
- E0;
     ...>
 }
//# pattern-10, witnesses: 5
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier bh;
identifier bio_flags;
identifier rw;
@@
 int _submit_bh(int rw, struct buffer_head * bh, unsigned long bio_flags)
 {
     <...
- BUG_ON(E0);
     ...>
 }
//# pattern-8, witnesses: 2
@@
expression E1;
expression ME0;
@@
- struct bio * bio = bio;
- bio = bio_alloc(GFP_NOIO, 1);
- ME0 = E1;
