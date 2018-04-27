//# pattern-1, witnesses: 22
@r0@
identifier fn;
expression P0, P1, P3;
@@
rtnl_register(P0, P1, fn, P3)
@@
identifier in_skb;
identifier nlh;
identifier r0.fn;
@@
- int fn(struct sk_buff * in_skb, struct nlmsghdr * nlh)
+ int fn(struct sk_buff * in_skb, struct nlmsghdr * nlh, struct netlink_ext_ack * extack)
 {
     <...
- NULL
+ extack
     ...>
 }
//# pattern-4, witnesses: 9
@r1@
identifier fn;
expression P0, P1, P3;
@@
rtnl_register(P0, P1, fn, P3)
@@
identifier extack;
identifier nlh;
identifier r1.fn;
identifier skb;
@@
 int fn(struct sk_buff * skb, struct nlmsghdr * nlh, struct netlink_ext_ack * extack)
 { ... }
//# pattern-5, witnesses: 2
@r2@
identifier fn;
expression P0, P1, P3;
@@
__rtnl_register(P0, P1, fn, P3)
@@
identifier extack;
identifier nlh;
identifier r2.fn;
identifier skb;
@@
 int fn(struct sk_buff * skb, struct nlmsghdr * nlh, struct netlink_ext_ack * extack)
 { ... }
