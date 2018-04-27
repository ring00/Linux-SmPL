//# pattern-4, witnesses: 4
@@
expression E0;
expression E2;
expression ME1;
expression ME3;
expression ME4;
identifier PV5;
@@
- __udp4_lib_lookup(net, E0, ME1, E2, ME3, ME4, PV5, NULL)
+ __udp4_lib_lookup(net, E0, ME1, E2, ME3, ME4, 0, PV5, NULL)
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
- struct sock * __udp4_lib_lookup(struct net * net, __be32 saddr, __be16 sport, __be32 daddr, __be16 dport, int dif, struct udp_table * udptable, struct sk_buff * skb)
+ struct sock * __udp4_lib_lookup(struct net * net, __be32 saddr, __be16 sport, __be32 daddr, __be16 dport, int dif, int sdif, struct udp_table * udptable, struct sk_buff * skb)
 {
     <...
- udp4_lib_lookup2(net, saddr, sport, daddr, hnum, dif, exact_dif, hslot2, skb)
+ udp4_lib_lookup2(net, saddr, sport, daddr, hnum, dif, sdif, exact_dif, hslot2, skb)
     ...>
 }
