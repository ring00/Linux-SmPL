//# pattern-1, witnesses: 14
@@
expression E0;
expression E1;
expression E2;
@@
- netlink_ack(E0, E1, E2)
+ netlink_ack(E0, E1, E2, NULL)
//# pattern-8, witnesses: 6
@r0@
identifier fn;
expression P0;
@@
netlink_rcv_skb(P0, fn)
@@
identifier nlh;
identifier r0.fn;
identifier skb;
@@
- int fn(struct sk_buff * skb, struct nlmsghdr * nlh)
+ int fn(struct sk_buff * skb, struct nlmsghdr * nlh, struct netlink_ext_ack * extack)
 { ... }
