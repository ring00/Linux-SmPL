//# pattern-2, witnesses: 3
@r0@
identifier i, fn;
@@
struct ip_vs_protocol i = {
    .conn_schedule = fn,
};
@@
identifier af;
identifier cpp;
identifier iph;
identifier pd;
identifier r0.fn;
identifier skb;
identifier verdict;
@@
- int fn(int af, struct sk_buff * skb, struct ip_vs_proto_data * pd, int * verdict, struct ip_vs_conn ** cpp, struct ip_vs_iphdr * iph)
+ int fn(struct netns_ipvs * ipvs, int af, struct sk_buff * skb, struct ip_vs_proto_data * pd, int * verdict, struct ip_vs_conn ** cpp, struct ip_vs_iphdr * iph)
 {
     <...
- ipvs = net_ipvs(net);
     ...>
 }
//# pattern-4, witnesses: 3
@@
expression E0;
expression V1;
@@
- ip_vs_try_to_schedule(E0, skb, pd, &v, &cp, &V1)
+ ip_vs_try_to_schedule(ipvs, E0, skb, pd, &v, &cp, &V1)
//# pattern-6, witnesses: 2
@r1@
identifier i, fn;
@@
struct ip_vs_protocol i = {
    .conn_schedule = fn,
};
@@
identifier af;
identifier cpp;
identifier iph;
identifier ipvs;
identifier pd;
identifier r1.fn;
identifier skb;
identifier verdict;
@@
 int fn(struct netns_ipvs * ipvs, int af, struct sk_buff * skb, struct ip_vs_proto_data * pd, int * verdict, struct ip_vs_conn ** cpp, struct ip_vs_iphdr * iph)
 {
     <...
- net = skb_net(skb);
     ...>
 }
