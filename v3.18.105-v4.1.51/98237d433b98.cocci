//# pattern-8, witnesses: 5
@@
expression E0;
@@
- E0->netdev_ops
+ E0->swdev_ops
//# pattern-1, witnesses: 2
@@
expression E0;
@@
- E0->ndo_switch_fib_ipv4_add
+ E0->swdev_fib_ipv4_add
//# pattern-2, witnesses: 2
@@
expression E0;
@@
- E0->ndo_switch_fib_ipv4_del
+ E0->swdev_fib_ipv4_del
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- E0->ndo_switch_parent_id_get
+ E0->swdev_parent_id_get
