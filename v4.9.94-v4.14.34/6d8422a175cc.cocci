//# pattern-3, witnesses: 2
@@
@@
- fib_table_insert(net, tb, &cfg)
+ fib_table_insert(net, tb, &cfg, NULL)
//# pattern-8, witnesses: 2
@r0@
identifier fn;
expression P0, P1, P3;
@@
rtnl_register(P0, P1, fn, P3)
@@
identifier extack;
identifier nlh;
identifier r0.fn;
identifier skb;
@@
 int fn(struct sk_buff * skb, struct nlmsghdr * nlh, struct netlink_ext_ack * extack)
 {
     <...
- rtm_to_fib_config(net, skb, nlh, &cfg)
+ rtm_to_fib_config(net, skb, nlh, &cfg, extack)
     ...>
 }
