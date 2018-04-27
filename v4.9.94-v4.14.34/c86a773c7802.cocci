//# pattern-2, witnesses: 6
@@
expression E0;
@@
- dst_release(E0->dst)
+ sctp_transport_dst_release(E0)
//# pattern-1, witnesses: 3
@@
@@
- transport->dst = NULL;
