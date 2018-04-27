//# pattern-8, witnesses: 4
@@
@@
- ip6_route_add(&cfg)
+ ip6_route_add(&cfg, NULL)
//# pattern-17, witnesses: 2
@r0@
identifier fn;
expression P0, P1, P3;
@@
__rtnl_register(P0, P1, fn, P3)
@@
identifier extack;
identifier nlh;
identifier r0.fn;
identifier skb;
@@
 int fn(struct sk_buff * skb, struct nlmsghdr * nlh, struct netlink_ext_ack * extack)
 {
     <...
- rtm_to_fib6_config(skb, nlh, &cfg)
+ rtm_to_fib6_config(skb, nlh, &cfg, extack)
     ...>
 }
