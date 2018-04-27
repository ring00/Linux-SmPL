//# pattern-2, witnesses: 3
@@
expression E0;
expression E2;
expression E4;
expression E6;
expression ME1;
expression ME3;
identifier PV5;
@@
- __udp6_lib_lookup(net, E0, ME1, E2, ME3, E4, PV5, E6)
+ __udp6_lib_lookup(net, E0, ME1, E2, ME3, E4, 0, PV5, E6)
//# pattern-1, witnesses: 2
@@
expression E0;
@@
- __udp6_lib_lookup(dev_net(skb->dev), &iph->saddr, sport, &iph->daddr, dport, inet6_iif(skb), E0, skb)
+ __udp6_lib_lookup(dev_net(skb->dev), &iph->saddr, sport, &iph->daddr, dport, inet6_iif(skb), inet6_sdif(skb), E0, skb)
//# pattern-5, witnesses: 2
@r0@
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
- struct sock * __udp6_lib_lookup(struct net * net, const struct in6_addr * saddr, __be16 sport, const struct in6_addr * daddr, __be16 dport, int dif, struct udp_table * udptable, struct sk_buff * skb)
+ struct sock * __udp6_lib_lookup(struct net * net, const struct in6_addr * saddr, __be16 sport, const struct in6_addr * daddr, __be16 dport, int dif, int sdif, struct udp_table * udptable, struct sk_buff * skb)
 {
     <...
- udp6_lib_lookup2(net, saddr, sport, daddr, hnum, dif, exact_dif, hslot2, skb)
+ udp6_lib_lookup2(net, saddr, sport, daddr, hnum, dif, sdif, exact_dif, hslot2, skb)
     ...>
 }
