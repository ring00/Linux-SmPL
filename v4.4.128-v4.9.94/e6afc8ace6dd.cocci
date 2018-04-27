//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier sk;
identifier skb;
@@
- int sock_queue_rcv_skb(struct sock * sk, struct sk_buff * skb)
+ int sock_queue_rcv_skb(struct sock * sk, struct sk_buff * skb)
 {
     <...
- unsigned long flags = flags;
- struct sk_buff_head * list = &sk->sk_receive_queue;
     ...>
 }
//# pattern-11, witnesses: 2
@@
identifier addr_len;
identifier flags;
identifier fn;
identifier len;
identifier msg;
identifier noblock;
identifier sk;
@@
 int fn(struct sock * sk, struct msghdr * msg, size_t len, int noblock, int flags, int * addr_len)
 {
     <...
- skb_copy_and_csum_datagram_msg(skb, sizeof(unsigned long), msg)
+ skb_copy_and_csum_datagram_msg(skb, 0, msg)
     ...>
 }
//# pattern-12, witnesses: 2
@@
identifier addr_len;
identifier flags;
identifier fn;
identifier len;
identifier msg;
identifier noblock;
identifier sk;
@@
 int fn(struct sock * sk, struct msghdr * msg, size_t len, int noblock, int flags, int * addr_len)
 {
     <...
- skb_copy_datagram_msg(skb, sizeof(unsigned long), msg, copied)
+ skb_copy_datagram_msg(skb, 0, msg, copied)
     ...>
 }
//# pattern-15, witnesses: 2
@@
expression E0;
@@
- E0 = skb->len - sizeof(unsigned long)
+ E0 = skb->len
//# pattern-17, witnesses: 2
@@
expression list listE0;
@@
- sock_queue_rcv_skb(listE0)
+ __sock_queue_rcv_skb(listE0)
