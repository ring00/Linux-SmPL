//# pattern-2, witnesses: 2
@r0@
identifier fn;
expression P0, P1, P3;
@@
rtnl_register(P0, P1, fn, P3)
@@
expression E0;
identifier extack;
identifier nlh;
identifier r0.fn;
identifier skb;
@@
 int fn(struct sk_buff * skb, struct nlmsghdr * nlh, struct netlink_ext_ack * extack)
 {
     <...
- do_setlink(skb, dev, ifm, tb, ifname, E0)
+ do_setlink(skb, dev, ifm, extack, tb, ifname, E0)
     ...>
 }
