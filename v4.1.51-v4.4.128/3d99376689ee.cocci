//# pattern-4, witnesses: 2
@@
identifier fn;
identifier net;
@@
 int fn(struct net * net)
 {
     <...
- ip_vs_control_net_cleanup(net)
+ ip_vs_control_net_cleanup(ipvs)
     ...>
 }
