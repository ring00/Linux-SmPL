//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier addr;
identifier dev;
expression list listE0;
identifier r0.fn;
typedef u16;
identifier vid;
@@
- int fn(struct net_device * dev, const unsigned char * addr, u16 vid)
+ int fn(struct net_bridge * br, struct net_bridge_port * p, const unsigned char * addr, u16 vid)
 {
     <...
- struct net_bridge_port * p = p;
- struct net_bridge * br = br;
- rtnl_lock(listE0);
- p = br_port_get_rtnl(dev);
- if (!p) {
- pr_info();
- err = -EINVAL;
- }
- br = p->br;
+ ASSERT_RTNL;
     ...>
 }
