//# pattern-4, witnesses: 25
@@
expression list listE0;
@@
- nla_get_be32(listE0)
+ nla_get_in_addr(listE0)
//# pattern-3, witnesses: 10
@@
expression E0;
expression E1;
@@
- nla_memcpy(&E0, E1, sizeof(unsigned long));
+ E0 = nla_get_in6_addr(E1);
//# pattern-2, witnesses: 2
@@
expression EC0;
expression EC1;
identifier data;
identifier fn;
identifier parms;
@@
 void fn(struct nlattr ** data, struct __ip6_tnl_parm * parms)
 {
     <...
- if (data[EC0]) {
- nla_memcpy(&parms->raddr, data[EC1], sizeof(unsigned long));
- }
+ if (data[EC1]) {
+ parms->raddr = nla_get_in6_addr(data[EC0]);
+ }
     ...>
 }
