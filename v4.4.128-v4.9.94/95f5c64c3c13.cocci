//# pattern-1, witnesses: 6
@@
expression list listE0;
@@
- tnl_flags_to_gre_flags(listE0)
+ gre_tnl_flags_to_gre_flags(listE0)
//# pattern-3, witnesses: 2
@@
expression list listE0;
@@
- ip_gre_calc_hlen(listE0)
+ gre_calc_hlen(listE0)
