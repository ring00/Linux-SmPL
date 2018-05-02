//# pattern-1, witnesses: 8
@@
identifier dev;
identifier fn;
@@
 void fn(struct net_device * dev)
 {
     <...
- dev->neigh_priv_len = sizeof(unsigned long);
     ...>
 }
//# pattern-4, witnesses: 8
@@
identifier s;
@@
 const struct net_device_ops s = {
-    .ndo_neigh_construct = ax25_neigh_construct,
 };
