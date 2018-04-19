//# pattern-1, witnesses: 4
@@
expression E0;
expression IL2;
expression V1;
@@
- pp->conn_out_get(E0, skb, &V1, IL2)
+ pp->conn_out_get(E0, skb, &V1)
//# pattern-9, witnesses: 3
@@
expression E0;
expression E2;
expression V1;
@@
- pp->conn_in_get(E0, skb, &V1, E2)
+ pp->conn_in_get(E0, skb, &V1)
//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier af;
identifier inverse;
identifier iph;
identifier r0.fn;
identifier skb;
@@
- struct ip_vs_conn * fn(int af, const struct sk_buff * skb, const struct ip_vs_iphdr * iph, int inverse)
+ struct ip_vs_conn * fn(int af, const struct sk_buff * skb, const struct ip_vs_iphdr * iph)
 {
     <...
- ip_vs_conn_fill_param_proto(af, skb, iph, inverse, &p)
+ ip_vs_conn_fill_param_proto(af, skb, iph, &p)
     ...>
 }
