//# pattern-14, witnesses: 4
@@
expression list listE0;
@@
- __ip_mc_join_group(listE0)
+ ip_mc_join_group(listE0)
//# pattern-5, witnesses: 3
@@
expression list listE0;
@@
- __ipv6_sock_mc_join(listE0)
+ ipv6_sock_mc_join(listE0)
//# pattern-1, witnesses: 2
@@
expression IL0;
expression ME1;
expression ME2;
expression ME3;
expression ME4;
identifier level;
identifier optlen;
identifier optname;
identifier optval;
identifier sk;
@@
 int do_ipv6_setsockopt(struct sock * sk, int level, int optname, char * optval, unsigned int optlen)
 {
     <...
- if (optname == IL0) {
- retv = __ipv6_sock_mc_join(sk, ME1, &ME2);
- }
+ if (optname == IL0) {
+ retv = ipv6_sock_mc_join(sk, ME3, &ME4);
+ }
     ...>
 }
//# pattern-9, witnesses: 2
@@
expression IL0;
identifier level;
identifier optlen;
identifier optname;
identifier optval;
identifier sk;
@@
 int do_ip_setsockopt(struct sock * sk, int level, int optname, char * optval, unsigned int optlen)
 {
     <...
- if (optname == IL0) {
- err = __ip_mc_join_group(sk, &mreq);
- }
+ if (optname == IL0) {
+ err = ip_mc_join_group(sk, &mreq);
+ }
     ...>
 }
