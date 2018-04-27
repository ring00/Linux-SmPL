//# pattern-1, witnesses: 2
@@
identifier fn;
identifier len;
identifier msg;
identifier sk;
@@
 int fn(struct sock * sk, struct msghdr * msg, size_t len)
 {
     <...
- ip6_datagram_send_ctl(sock_net(sk), sk, msg, &fl6, opt, &hlimit, &tclass, &dontfrag)
+ ip6_datagram_send_ctl(sock_net(sk), sk, msg, &fl6, opt, &hlimit, &tclass, &dontfrag, &sockc)
     ...>
 }
//# pattern-3, witnesses: 2
@@
expression E1;
expression V0;
@@
- ip6_datagram_send_ctl(net, sk, &msg, &V0, E1, &junk, &junk, &junk)
+ ip6_datagram_send_ctl(net, sk, &msg, &V0, E1, &junk, &junk, &junk, &sockc_junk)
