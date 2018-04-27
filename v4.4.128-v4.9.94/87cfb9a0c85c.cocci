//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct rpcrdma_memreg_ops i = {
    .ro_open = fn,
};
@@
identifier cdata;
identifier ep;
identifier ia;
identifier r0.fn;
@@
 int fn(struct rpcrdma_ia * ia, struct rpcrdma_ep * ep, struct rpcrdma_create_data_internal * cdata)
 {
     <...
- rpcrdma_set_max_header_sizes(ia, cdata, max_t);
+ ia->ri_max_segs = max_t;
     ...>
 }
