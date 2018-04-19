//# pattern-4, witnesses: 2
@@
identifier fn;
identifier net;
@@
 void fn(struct net * net)
 {
     <...
- ip_vs_app_net_cleanup(net)
+ ip_vs_app_net_cleanup(ipvs)
     ...>
 }
