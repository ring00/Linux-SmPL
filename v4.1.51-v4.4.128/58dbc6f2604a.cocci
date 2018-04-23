//# pattern-3, witnesses: 9
@@
@@
- ip_vs_conn_net(cp)
+ cp->ipvs->net
//# pattern-5, witnesses: 7
@@
expression E0;
@@
- ip_vs_conn_net_eq(cp, E0)
+ net_eq(cp->ipvs->net, E0)
//# pattern-4, witnesses: 4
@@
identifier cp;
identifier fn;
identifier s;
@@
  struct netns_ipvs * s = {
 };
int fn(struct ip_vs_conn * cp)
 {
     <...
 struct netns_ipvs * s = {
 };
     ...>
 }
