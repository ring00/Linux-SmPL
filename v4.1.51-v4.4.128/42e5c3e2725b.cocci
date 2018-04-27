//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier max_reqs;
identifier xprt;
@@
 void xprt_destroy_backchannel(struct rpc_xprt * xprt, unsigned int max_reqs)
 {
     <...
- &xprt->bc_pa_lock;
     ...>
 }
