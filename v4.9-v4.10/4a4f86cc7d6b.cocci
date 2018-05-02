//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct rtnl_link_ops i = {
    .setup = fn,
};
@@
expression ME0;
identifier dev;
@@
 void vxlan_setup(struct net_device * dev)
 {
     <...
- ME0 |= NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_STAG_TX;
     ...>
 }
