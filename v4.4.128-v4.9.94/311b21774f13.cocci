//# pattern-1, witnesses: 2
@@
expression list listE0;
@@
- sctp_skb_list_tail(listE0)
+ skb_queue_splice_tail_init(listE0)
//# pattern-3, witnesses: 2
@@
identifier err;
identifier flags;
identifier noblock;
identifier sk;
@@
 struct sk_buff * sctp_skb_recv_datagram(struct sock * sk, int flags, int noblock, int * err)
 {
     <...
- &sk->sk_receive_queue.lock;
     ...>
 }
