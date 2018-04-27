//# pattern-1, witnesses: 2
@@
identifier features;
identifier fn;
typedef netdev_features_t;
identifier upper;
@@
 void fn(struct net_device * upper, struct net_device * upper, netdev_features_t features)
 {
     <...
- int bit = bit;
+ int feature_bit = feature_bit;
     ...>
 }
