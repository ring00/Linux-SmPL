//# pattern-1, witnesses: 13
@r0@
identifier i, fn;
@@
struct rtnl_link_ops i = {
    .validate = fn,
};
@@
identifier data;
identifier r0.fn;
identifier tb;
@@
- int fn(struct nlattr ** tb, struct nlattr ** data)
+ int fn(struct nlattr ** tb, struct nlattr ** data, struct netlink_ext_ack * extack)
 { ... }
