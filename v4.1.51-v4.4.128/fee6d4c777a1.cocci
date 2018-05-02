//# pattern-1, witnesses: 2
@@
statement S0;
@@
- if (dev->flags & IFF_SLAVE) { S0 }
+ if (netif_is_l3_slave(dev)) { S0 }
//# pattern-2, witnesses: 2
@@
@@
- IFF_SLAVE
+ IFF_L3MDEV_SLAVE
//# pattern-5, witnesses: 2
@@
expression E0;
@@
- E0->flags
+ E0->priv_flags
