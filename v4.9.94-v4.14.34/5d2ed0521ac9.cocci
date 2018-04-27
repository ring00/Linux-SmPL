//# pattern-3, witnesses: 2
@@
expression ME0;
expression ME1;
@@
- secure_tcpv6_ts_off(ME0.in6_u.u6_addr32, ME1.in6_u.u6_addr32)
+ secure_tcpv6_ts_off(sock_net(sk), ME0.in6_u.u6_addr32, ME1.in6_u.u6_addr32)
//# pattern-4, witnesses: 2
@@
expression ME0;
expression ME1;
@@
- secure_tcp_ts_off(ME0, ME1)
+ secure_tcp_ts_off(sock_net(sk), ME0, ME1)
