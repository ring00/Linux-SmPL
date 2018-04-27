//# pattern-1, witnesses: 3
@@
expression E1;
expression E2;
expression E3;
expression E5;
expression E6;
expression E7;
expression E8;
expression ME4;
expression V0;
@@
- udp_tunnel6_xmit_skb(V0, E1, skb, E2, &E3, &ME4, E5, ttl, E6, E7, E8)
+ udp_tunnel6_xmit_skb(V0, E1, skb, E2, &E3, &ME4, E5, ttl, 0, E6, E7, E8)
