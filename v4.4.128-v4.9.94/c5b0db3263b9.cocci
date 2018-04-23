//# pattern-1, witnesses: 2
@@
expression E0;
identifier sk;
@@
 int netlink_dump(struct sock * sk)
 {
     <...
- netlink_alloc_skb(sk, alloc_size, nlk->portid, E0)
+ alloc_skb(alloc_size, E0)
     ...>
 }
