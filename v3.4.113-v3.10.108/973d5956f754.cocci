//# pattern-14, witnesses: 5
@@
@@
- read_unlock
+ write_unlock
//# pattern-5, witnesses: 4
@@
expression list listE0;
@@
- addrconf_del_timer(listE0)
+ addrconf_del_dad_timer(listE0)
//# pattern-15, witnesses: 4
@@
expression E0;
@@
- E0->probes
+ E0->dad_probes
//# pattern-9, witnesses: 2
@@
expression E0;
@@
- addrconf_mod_timer(ifp, AC_DAD, E0)
+ addrconf_mod_dad_timer(ifp, E0)
