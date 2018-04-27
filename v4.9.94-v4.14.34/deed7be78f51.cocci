//# pattern-1, witnesses: 2
@@
identifier flag;
identifier sk;
identifier skb;
@@
 int tcp_ack(struct sock * sk, const struct sk_buff * skb, int flag)
 {
     <...
- tcp_fastretrans_alert(sk, acked, is_dupack, &flag, &rexmit)
+ tcp_fastretrans_alert(sk, acked, is_dupack, &flag, &rexmit, &sack_state.ack_time)
     ...>
 }
