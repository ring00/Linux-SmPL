//# pattern-3, witnesses: 3
@@
expression E0;
expression E1;
@@
- sk_stream_alloc_skb(sk, E0, E1)
+ sk_stream_alloc_skb(sk, E0, E1, true)
//# pattern-1, witnesses: 2
@@
expression E1;
expression V0;
@@
- sk_stream_alloc_skb(sk, V0, E1)
+ sk_stream_alloc_skb(sk, V0, E1, false)
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- sk_stream_alloc_skb(sk, E0, sk->sk_allocation)
+ sk_stream_alloc_skb(sk, E0, sk->sk_allocation, skb_queue_empty(&sk->sk_write_queue))
