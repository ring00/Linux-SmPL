//# pattern-1, witnesses: 3
@r0@
identifier i, fn;
@@
struct ip_vs_protocol i = {
    .exit_netns = fn,
};
@@
identifier net;
identifier pd;
identifier r0.fn;
@@
- void fn(struct net * net, struct ip_vs_proto_data * pd)
+ void fn(struct netns_ipvs * ipvs, struct ip_vs_proto_data * pd)
 { ... }
//# pattern-2, witnesses: 3
@r1@
identifier i, fn;
@@
struct ip_vs_protocol i = {
    .init_netns = fn,
};
@@
identifier net;
identifier pd;
identifier r1.fn;
@@
- int fn(struct net * net, struct ip_vs_proto_data * pd)
+ int fn(struct netns_ipvs * ipvs, struct ip_vs_proto_data * pd)
 {
     <...
- struct netns_ipvs * ipvs = net_ipvs(net);
     ...>
 }
//# pattern-3, witnesses: 2
@@
@@
- ipvs->net
+ ipvs
