//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier nrservs;
identifier pool;
identifier serv;
@@
 int svc_set_num_threads(struct svc_serv * serv, struct svc_pool * pool, int nrservs)
 {
     <...
- serv->sv_module
+ serv->sv_ops->svo_module
     ...>
 }
