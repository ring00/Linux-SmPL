//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier gid;
identifier lid;
identifier qp;
identifier r0.fn;
typedef u16;
@@
 int fn(struct ib_qp * qp, union ib_gid * gid, u16 lid)
 {
     <...
- gid->raw[0] != 255 || E0
+ !rdma_is_multicast_addr(gid->raw) || E0
     ...>
 }
