//# pattern-8, witnesses: 2
@@
@@
- sctp_err_finish(sk, asoc)
+ sctp_err_finish(sk, transport)
//# pattern-9, witnesses: 2
@@
@@
- sctp_association_put(asoc)
+ sctp_transport_put(transport)
