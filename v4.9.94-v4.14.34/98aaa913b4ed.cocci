//# pattern-4, witnesses: 2
@@
expression E0;
@@
- tcp_try_coalesce(sk, tail, skb, E0)
+ tcp_try_coalesce(sk, RCV_QUEUE, tail, skb, E0)
