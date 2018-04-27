//# pattern-1, witnesses: 2
@@
expression E0;
expression EC1;
@@
- lowpan_netdev_setup(E0, EC1);
//# pattern-4, witnesses: 2
@@
expression list listE0;
@@
- unregister_netdev(listE0)
+ lowpan_unregister_netdev(listE0)
