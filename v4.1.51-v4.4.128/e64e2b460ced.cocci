//# pattern-1, witnesses: 3
@@
expression E0;
identifier fn;
identifier p;
@@
 struct ip_vs_conn * fn(const struct ip_vs_conn_param * p)
 {
     <...
- E0 && net_eq(cp->ipvs->net, p->net)
+ E0 && cp->ipvs == p->ipvs
     ...>
 }
//# pattern-4, witnesses: 2
@@
@@
- p->net
+ p->ipvs->net
