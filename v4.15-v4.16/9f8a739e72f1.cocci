//# pattern-4, witnesses: 2
@@
expression V0;
@@
- struct net_device * n_dev = n_dev;
- unsigned int i = i;
- V0 = tcf_mirred_ifindex(a);
+ struct net_device * n_dev = n_dev;
+ unsigned int i = i;
+ target_dev = tcf_mirred_dev(a);
