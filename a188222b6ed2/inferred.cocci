//# pattern-2, witnesses: 21
@@
@@
- NETIF_F_ALL_CSUM
+ NETIF_F_CSUM_MASK
//# pattern-1, witnesses: 2
@@
@@
- NETIF_F_ALL_CSUM
+ NETIF_F_HW_CSUM
//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct rtnl_link_ops i = {
    .setup = fn,
};
@@
identifier bond_dev;
identifier r0.fn;
@@
 void fn(struct net_device * bond_dev)
 {
     <...
- bond_dev->hw_features &= ~1 << NETIF_F_HW_CSUM_BIT | 1 << NETIF_F_IP_CSUM_BIT | 1 << NETIF_F_HW_CSUM_BIT | 1 << NETIF_F_IPV6_CSUM_BIT & ~NETIF_F_HW_CSUM;
     ...>
 }
