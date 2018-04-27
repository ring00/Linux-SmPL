//# pattern-1, witnesses: 2
@@
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
expression V0;
@@
- __inet6_lookup_established(net, &V0, E1, E2, E3, ntohs(E4), E5)
+ __inet6_lookup_established(net, &V0, E1, E2, E3, ntohs(E4), E5, 0)
//# pattern-3, witnesses: 2
@@
expression E0;
expression E5;
expression ME1;
expression ME2;
expression ME3;
expression ME4;
@@
- __inet6_lookup_established(E0, &tcp_hashinfo, &ME1, ME2, &ME3, ntohs(ME4), E5)
+ __inet6_lookup_established(E0, &tcp_hashinfo, &ME1, ME2, &ME3, ntohs(ME4), E5, inet6_sdif(skb))
