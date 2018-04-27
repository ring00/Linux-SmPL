//# pattern-3, witnesses: 10
@@
expression E0;
@@
- E0->master_netdev
+ E0->cpu_dp->netdev
//# pattern-9, witnesses: 6
@@
@@
- p->dp->ds->dst->master_netdev
+ dsa_master_netdev(p)
//# pattern-6, witnesses: 3
@@
@@
- if (ds->master_netdev) {
- master = ds->master_netdev;
- }
//# pattern-2, witnesses: 2
@@
identifier ds;
identifier fn;
identifier port;
identifier s;
identifier wol;
@@
  struct net_device * s = {
 };
int fn(struct dsa_switch * ds, int port, struct ethtool_wolinfo * wol)
 {
     <...
 struct net_device * s = {
 };
     ...>
 }
