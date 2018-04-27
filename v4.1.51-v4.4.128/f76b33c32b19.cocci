//# pattern-2, witnesses: 3
@@
expression E0;
@@
- inet6_csk_route_req(sk, E0, req)
+ inet6_csk_route_req(sk, E0, req, IPPROTO_TCP)
