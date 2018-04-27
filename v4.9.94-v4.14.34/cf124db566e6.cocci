//# pattern-3, witnesses: 11
@@
identifier dev;
identifier fn;
@@
 void fn(struct net_device * dev)
 {
     <...
- dev->destructor = free_netdev
+ dev->needs_free_netdev = true
     ...>
 }
//# pattern-1, witnesses: 4
@@
identifier dev;
identifier fn;
@@
 void fn(struct net_device * dev)
 {
     <...
- free_netdev(dev);
     ...>
 }
//# pattern-2, witnesses: 3
@r0@
identifier i, fn;
@@
struct rtnl_link_ops i = {
    .setup = fn,
};
@@
expression F0;
identifier bond_dev;
identifier r0.fn;
@@
 void fn(struct net_device * bond_dev)
 {
     <...
- bond_dev->destructor = F0;
+ bond_dev->needs_free_netdev = true;
+ bond_dev->priv_destructor = F0;
     ...>
 }
