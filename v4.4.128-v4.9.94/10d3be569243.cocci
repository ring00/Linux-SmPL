//# pattern-1, witnesses: 2
@@
expression V0;
@@
- __tcp_retransmit_skb(sk, V0)
+ __tcp_retransmit_skb(sk, V0, 1)
//# pattern-6, witnesses: 2
@@
identifier sk;
@@
 void tcp_retransmit_timer(struct sock * sk)
 {
     <...
- tcp_retransmit_skb(sk, tcp_write_queue_head(sk))
+ tcp_retransmit_skb(sk, tcp_write_queue_head(sk), 1)
     ...>
 }
