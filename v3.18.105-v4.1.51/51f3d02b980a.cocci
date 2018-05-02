//# pattern-1, witnesses: 16
@@
expression E0;
expression E2;
identifier PV1;
@@
- skb_copy_datagram_iovec(skb, E0, PV1->msg_iov, E2)
+ skb_copy_datagram_msg(skb, E0, PV1, E2)
