//# pattern-5, witnesses: 5
@r0@
identifier i, fn;
@@
struct nf_conntrack_l4proto i = {
    .pkt_to_tuple = fn,
};
@@
typedef bool;
identifier dataoff;
identifier r0.fn;
identifier skb;
identifier tuple;
@@
- bool fn(const struct sk_buff * skb, unsigned int dataoff, struct nf_conntrack_tuple * tuple)
+ bool fn(const struct sk_buff * skb, unsigned int dataoff, struct net * net, struct nf_conntrack_tuple * tuple)
 { ... }
//# pattern-1, witnesses: 3
@@
expression E0;
expression E1;
expression V2;
@@
- nf_ct_get_tuplepr(skb, E0, E1, &V2)
+ nf_ct_get_tuplepr(skb, E0, E1, net, &V2)
