//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier destructor;
identifier flags;
identifier sk;
identifier skb;
@@
- int __sk_queue_drop_skb(struct sock * sk, struct sk_buff * skb, unsigned int flags, void (*)(struct sock *, struct sk_buff *) destructor)
+ int __sk_queue_drop_skb(struct sock * sk, struct sk_buff_head * sk_queue, struct sk_buff * skb, unsigned int flags, void (*)(struct sock *, struct sk_buff *) destructor)
 {
     <...
- &sk->sk_receive_queue
+ sk_queue
     ...>
 }
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier destructor;
identifier flags;
identifier sk;
identifier sk_queue;
identifier skb;
@@
 int __sk_queue_drop_skb(struct sock * sk, struct sk_buff_head * sk_queue, struct sk_buff * skb, unsigned int flags, void (*)(struct sock *, struct sk_buff *) destructor)
 {
     <...
- &sk->sk_receive_queue.lock
+ &sk_queue->lock
     ...>
 }
