//# pattern-3, witnesses: 3
@@
expression list listE0;
@@
- netif_is_vrf(listE0)
+ netif_is_l3_master(listE0)
//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- netif_index_is_vrf(listE0)
+ netif_index_is_l3_master(listE0)
