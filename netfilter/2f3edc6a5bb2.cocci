//# pattern-3, witnesses: 2
@@
identifier fn;
identifier net;
@@
 int fn(struct net * net)
 {
     <...
- ip_vs_conn_net_cleanup(net)
+ ip_vs_conn_net_cleanup(ipvs)
     ...>
 }
