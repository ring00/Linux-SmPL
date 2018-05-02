//# pattern-8, witnesses: 2
@@
identifier context;
identifier fn;
identifier path_rec;
identifier status;
@@
- void fn(int status, struct ib_sa_path_rec * path_rec, void * context)
+ void fn(int status, struct sa_path_rec * path_rec, void * context)
 { ... }
//# pattern-9, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier attribute;
identifier r0.fn;
identifier rec;
@@
- void fn(void * attribute, struct ib_sa_path_rec * rec)
+ void fn(void * attribute, struct sa_path_rec * rec)
 { ... }
//# pattern-14, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier r1.fn;
identifier src;
@@
- void fn(struct ib_user_path_rec * src, struct ib_sa_path_rec * src)
+ void fn(struct ib_user_path_rec * src, struct sa_path_rec * src)
 { ... }
