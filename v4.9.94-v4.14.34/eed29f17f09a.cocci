//# pattern-3, witnesses: 6
@@
expression E1;
expression E2;
identifier PV0;
@@
- tcp_parse_options(PV0, &E1, 0, E2)
+ tcp_parse_options(sock_net(sk), PV0, &E1, 0, E2)
