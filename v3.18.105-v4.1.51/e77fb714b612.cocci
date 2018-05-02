//# pattern-4, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
expression EC3;
@@
- iscsit_tpg_add_network_portal(tpg, &E0, E1, E2, EC3)
+ iscsit_tpg_add_network_portal(tpg, &E0, E2, EC3)
//# pattern-8, witnesses: 2
@@
@@
- pr_err(, np->np_ip)
+ pr_err(, &np->np_sockaddr)
