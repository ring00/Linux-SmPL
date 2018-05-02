//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct fcoe_transport i = {
    .create = fn,
};
@@
identifier fip_mode;
identifier netdev;
identifier r0.fn;
@@
- int fn(struct net_device * netdev, enum fip_state fip_mode)
+ int fn(struct net_device * netdev, enum fip_mode fip_mode)
 { ... }
