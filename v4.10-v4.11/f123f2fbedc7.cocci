//# pattern-2, witnesses: 3
@r0@
identifier i, fn;
@@
struct dsa_switch_ops i = {
    .port_bridge_leave = fn,
};
@@
identifier ds;
identifier port;
identifier r0.fn;
@@
- void fn(struct dsa_switch * ds, int port)
+ void fn(struct dsa_switch * ds, int port, struct net_device * br)
 { ... }
