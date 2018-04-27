//# pattern-4, witnesses: 2
@@
identifier partial;
identifier size;
identifier sk;
@@
 void udp_rmem_release(struct sock * sk, int size, int partial)
 {
     <...
- &sk->sk_receive_queue.lock;
     ...>
 }
//# pattern-8, witnesses: 2
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
- __skb_recv_datagram(sk, flags | , &peeked, &off, &err)
+ __skb_recv_udp(sk, flags, noblock, &peeked, &off, &err)
     ...>
 }
//# pattern-9, witnesses: 2
@@
expression list listE0;
@@
- skb_recv_datagram(listE0)
+ skb_recv_udp(listE0)
