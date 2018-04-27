//# pattern-1, witnesses: 2
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
- ip_cmsg_recv_offset(msg, skb, sizeof(unsigned long), off)
+ ip_cmsg_recv_offset(msg, sk, skb, sizeof(unsigned long), off)
     ...>
 }
