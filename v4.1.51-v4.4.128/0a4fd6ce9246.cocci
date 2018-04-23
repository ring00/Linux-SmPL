//# pattern-3, witnesses: 4
@r0@
identifier i, fn;
@@
struct ip_vs_protocol i = {
    .conn_schedule = fn,
};
@@
expression IL1;
expression ME0;
identifier af;
identifier cpp;
identifier iph;
identifier pd;
identifier r0.fn;
identifier skb;
identifier verdict;
@@
 int fn(int af, struct sk_buff * skb, struct ip_vs_proto_data * pd, int * verdict, struct ip_vs_conn ** cpp, struct ip_vs_iphdr * iph)
 {
     <...
- ip_vs_service_find(net, af, skb->mark, iph->protocol, &ME0, ports[IL1])
+ ip_vs_service_find(ipvs, af, skb->mark, iph->protocol, &ME0, ports[IL1])
     ...>
 }
