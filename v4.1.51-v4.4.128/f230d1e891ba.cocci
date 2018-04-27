//# pattern-1, witnesses: 2
@@
expression list listE0;
@@
- ip6_tnl_dst_store(listE0)
+ ip6_tnl_dst_set(listE0)
//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- ip6_tnl_dst_check(listE0)
+ ip6_tnl_dst_get(listE0)
