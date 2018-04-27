//# pattern-1, witnesses: 3
@@
identifier PV0;
@@
- tcp_rcv_state_process(PV0, skb, tcp_hdr(skb))
+ tcp_rcv_state_process(PV0, skb)
