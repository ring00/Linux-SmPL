//# pattern-3, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
@@
- __udp4_lib_lookup(net, E0, E1, E2, E3, E4, E5)
+ __udp4_lib_lookup(net, E0, E1, E2, E3, E4, E5, NULL)
//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
@@
- __udp6_lib_lookup(E0, E1, E2, E3, E4, inet6_iif(skb), udptable)
+ __udp6_lib_lookup(E0, E1, E2, E3, E4, inet6_iif(skb), udptable, skb)
//# pattern-9, witnesses: 2
@@
@@
- reuseport_select_sock(sk, hash)
+ reuseport_select_sock(sk, hash, NULL, 0)
