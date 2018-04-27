//# pattern-2, witnesses: 2
@@
@@
- compute_score(sk, net, saddr, sport, daddr, hnum, dif)
+ compute_score(sk, net, saddr, sport, daddr, hnum, dif, exact_dif)
//# pattern-7, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
typedef __be16;
typedef __be32;
identifier daddr;
identifier dif;
identifier dport;
identifier net;
identifier saddr;
identifier skb;
identifier sport;
identifier udptable;
@@
 struct sock * __udp4_lib_lookup(struct net * net, __be32 saddr, __be16 sport, __be32 daddr, __be16 dport, int dif, struct udp_table * udptable, struct sk_buff * skb)
 {
     <...
- udp4_lib_lookup2(net, saddr, sport, daddr, hnum, dif, hslot2, skb)
+ udp4_lib_lookup2(net, saddr, sport, daddr, hnum, dif, exact_dif, hslot2, skb)
     ...>
 }
//# pattern-9, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
typedef __be16;
identifier daddr;
identifier dif;
identifier dport;
identifier net;
identifier saddr;
identifier skb;
identifier sport;
identifier udptable;
@@
 struct sock * __udp6_lib_lookup(struct net * net, const struct in6_addr * saddr, __be16 sport, const struct in6_addr * daddr, __be16 dport, int dif, struct udp_table * udptable, struct sk_buff * skb)
 {
     <...
- udp6_lib_lookup2(net, saddr, sport, daddr, hnum, dif, hslot2, skb)
+ udp6_lib_lookup2(net, saddr, sport, daddr, hnum, dif, exact_dif, hslot2, skb)
     ...>
 }
