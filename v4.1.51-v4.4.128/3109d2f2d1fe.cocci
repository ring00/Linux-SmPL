//# pattern-5, witnesses: 9
@@
@@
- net_ipvs(svc->net)
+ svc->ipvs
//# pattern-7, witnesses: 8
@@
@@
- svc->net
+ svc->ipvs->net
//# pattern-9, witnesses: 2
@@
expression ME0;
identifier fn;
identifier svc;
@@
 int fn(struct ip_vs_service * svc)
 {
     <...
- struct netns_ipvs * ipvs = net_ipvs(svc->net);
- return ME0;
+ return ME0;
     ...>
 }
//# pattern-10, witnesses: 2
@@
statement S0;
@@
- if (net_eq(svc->net, net)) { S0 }
+ if (svc->ipvs == ipvs) { S0 }
