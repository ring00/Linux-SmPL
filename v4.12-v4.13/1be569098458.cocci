//# pattern-3, witnesses: 9
@r0@
identifier i, fn;
@@
struct target_type i = {
    .end_io = fn,
};
@@
identifier bio;
identifier error;
identifier r0.fn;
identifier ti;
@@
- int fn(struct dm_target * ti, struct bio * bio, int error)
+ int fn(struct dm_target * ti, struct bio * bio, int * error)
 {
     <...
- return error;
+ return DM_ENDIO_DONE;
     ...>
 }
//# pattern-2, witnesses: 3
@r1@
identifier i, fn;
@@
struct target_type i = {
    .end_io = fn,
};
@@
identifier bio;
identifier error;
identifier r1.fn;
identifier ti;
@@
 int fn(struct dm_target * ti, struct bio * bio, int * error)
 { ... }
//# pattern-9, witnesses: 2
@r2@
identifier i, fn;
@@
struct target_type i = {
    .end_io = fn,
};
@@
identifier bio;
identifier error;
identifier r2.fn;
identifier ti;
@@
 int fn(struct dm_target * ti, struct bio * bio, int * error)
 {
     <...
- error == -EOPNOTSUPP
+ *error == -EOPNOTSUPP
     ...>
 }
