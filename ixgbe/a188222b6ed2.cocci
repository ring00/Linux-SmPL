//# pattern-2, witnesses: 22
@@
@@
- NETIF_F_ALL_CSUM
+ NETIF_F_CSUM_MASK
//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct rtnl_link_ops i = {
    .setup = fn,
};
@@
identifier dev;
identifier r0.fn;
@@
 void fn(struct net_device * dev)
 {
     <...
- dev->hw_features &= ~NETIF_F_ALL_CSUM & ~NETIF_F_HW_CSUM;
     ...>
 }
//# pattern-3, witnesses: 2
@@
@@
- NETIF_F_ALL_CSUM
+ NETIF_F_HW_CSUM
