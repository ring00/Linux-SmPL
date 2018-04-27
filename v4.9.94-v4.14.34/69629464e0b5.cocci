//# pattern-3, witnesses: 2
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
- __sk_queue_drop_skb(sk, skb, flags)
+ __sk_queue_drop_skb(sk, skb, flags, udp_skb_destructor)
     ...>
 }
