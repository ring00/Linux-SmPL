//# pattern-1, witnesses: 3
@@
expression list listE0;
@@
- ipvlan_dev_slave(listE0)
+ netif_is_ipvlan(listE0)
//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- ipvlan_dev_master(listE0)
+ netif_is_ipvlan_port(listE0)
