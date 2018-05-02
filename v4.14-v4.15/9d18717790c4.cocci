//# pattern-1, witnesses: 9
@@
expression ME0;
@@
- htonl(ntohs)
+ ntohs(ME0)
//# pattern-2, witnesses: 2
@@
@@
- ()
+ lid
//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
expression ME1;
identifier dst;
identifier src;
@@
 void ib_copy_path_rec_from_user(struct sa_path_rec * dst, struct ib_user_path_rec * src)
 {
     <...
- E0 = htonl(opa_get_lid_from_gid(ME1))
+ E0 = opa_get_lid_from_gid(ME1)
     ...>
 }
//# pattern-4, witnesses: 2
@@
@@
- ()
+ lid
//# pattern-5, witnesses: 2
@@
@@
- ()
+ lid
