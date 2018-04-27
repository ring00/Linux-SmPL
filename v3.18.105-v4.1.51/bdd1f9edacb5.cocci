//# pattern-1, witnesses: 4
@@
expression E0;
@@
- E0->rcv_nxt = TCP_SKB_CB(skb)->end_seq;
+ tcp_rcv_nxt_update(E0, TCP_SKB_CB(skb)->end_seq);
