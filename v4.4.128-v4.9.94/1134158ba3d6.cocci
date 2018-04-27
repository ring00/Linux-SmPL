//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
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
- udp6_lib_lookup2(net, saddr, sport, E0, hnum, dif, hslot2, slot2)
+ udp6_lib_lookup2(net, saddr, sport, E0, hnum, dif, hslot2, slot2, skb)
     ...>
 }
//# pattern-3, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
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
- udp4_lib_lookup2(net, saddr, sport, E0, hnum, dif, hslot2, slot2)
+ udp4_lib_lookup2(net, saddr, sport, E0, hnum, dif, hslot2, slot2, skb)
     ...>
 }
