//# pattern-1, witnesses: 4
@@
statement S0;
@@
- if (dev->netdev_ops->ndo_setup_tc) { S0 }
+ if (tc_should_offload(dev)) { S0 }
