//# pattern-2, witnesses: 17
@@
expression E0;
expression E1;
expression E2;
@@
- UDP_INC_STATS_BH(E0, E1, E2)
+ __UDP_INC_STATS(E0, E1, E2)
//# pattern-1, witnesses: 11
@@
expression E0;
expression E1;
expression E2;
@@
- UDP6_INC_STATS_BH(E0, E1, E2)
+ __UDP6_INC_STATS(E0, E1, E2)
//# pattern-3, witnesses: 2
@@
expression EC0;
identifier sk;
identifier skb;
identifier xprt;
@@
 void xs_udp_data_read_skb(struct rpc_xprt * xprt, struct sock * sk, struct sk_buff * skb)
 {
     <...
- UDPX_INC_STATS_BH(sk, EC0)
+ __UDPX_INC_STATS(sk, EC0)
     ...>
 }
