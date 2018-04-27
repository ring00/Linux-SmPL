//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier final_dst;
identifier fl6;
identifier r0.fn;
identifier sk;
@@
 struct dst_entry * fn(struct sock * sk, struct flowi6 * fl6, const struct in6_addr * final_dst)
 {
     <...
- ip6_dst_lookup_tail(sk, &dst, fl6)
+ ip6_dst_lookup_tail(sock_net(sk), sk, &dst, fl6)
     ...>
 }
//# pattern-5, witnesses: 2
@@
expression E1;
expression V0;
identifier fl6;
identifier net;
identifier sk;
identifier skb;
@@
 struct dst_entry * icmpv6_route_lookup(struct net * net, struct sk_buff * skb, struct sock * sk, struct flowi6 * fl6)
 {
     <...
- ip6_dst_lookup(sk, &V0, E1)
+ ip6_dst_lookup(net, sk, &V0, E1)
     ...>
 }
