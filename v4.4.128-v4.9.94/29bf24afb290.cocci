//# pattern-1, witnesses: 6
@@
expression E0;
expression E1;
expression E2;
@@
- netdev_master_upper_dev_link(E0, E1, E2)
+ netdev_master_upper_dev_link(E0, E1, E2, NULL)