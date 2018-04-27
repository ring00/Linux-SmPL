//# pattern-1, witnesses: 3
@r0@
identifier i, fn;
@@
struct ip_vs_protocol i = {
    .register_app = fn,
};
@@
identifier inc;
identifier net;
identifier r0.fn;
@@
- int fn(struct net * net, struct ip_vs_app * inc)
+ int fn(struct netns_ipvs * ipvs, struct ip_vs_app * inc)
 {
     <...
- struct netns_ipvs * ipvs = net_ipvs(net);
     ...>
 }
//# pattern-2, witnesses: 3
@r1@
identifier i, fn;
@@
struct ip_vs_protocol i = {
    .unregister_app = fn,
};
@@
identifier inc;
identifier net;
identifier r1.fn;
@@
- void fn(struct net * net, struct ip_vs_app * inc)
+ void fn(struct netns_ipvs * ipvs, struct ip_vs_app * inc)
 {
     <...
- net_ipvs(net)
+ ipvs
     ...>
 }
