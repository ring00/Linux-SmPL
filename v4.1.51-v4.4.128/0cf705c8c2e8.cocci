//# pattern-2, witnesses: 4
@@
expression E0;
expression V1;
@@
- pp->conn_out_get(E0, skb, &V1)
+ pp->conn_out_get(ipvs, E0, skb, &V1)
//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct ip_vs_protocol i = {
    .conn_out_get = fn,
};
@@
identifier af;
identifier iph;
identifier r0.fn;
identifier skb;
@@
- struct ip_vs_conn * fn(int af, const struct sk_buff * skb, const struct ip_vs_iphdr * iph)
+ struct ip_vs_conn * fn(struct netns_ipvs * ipvs, int af, const struct sk_buff * skb, const struct ip_vs_iphdr * iph)
 {
     <...
- struct netns_ipvs * ipvs = net_ipvs(skb_net(skb));
     ...>
 }