//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier net;
identifier serv;
@@
 void svc_shutdown_net(struct svc_serv * serv, struct net * net)
 {
     <...
- serv->sv_shutdown
+ serv->sv_ops->svo_shutdown
     ...>
 }
