//# pattern-2, witnesses: 2
@@
expression E2;
expression V1;
expression V3;
identifier fn;
identifier ldev;
expression list listE0;
@@
 int fn(struct net_device * ldev)
 {
     <...
- netdev_for_each_tx_queue(listE0);
- ldev->qdisc_tx_busylock = &V1;
- E2->qdisc_running_key = &V3;
+ netdev_lockdep_set_classes(ldev);
     ...>
 }
//# pattern-4, witnesses: 2
@@
expression E1;
expression V0;
expression V2;
identifier dev;
identifier fn;
@@
 int fn(struct net_device * dev)
 {
     <...
- dev->qdisc_tx_busylock = &V0;
- E1->qdisc_running_key = &V2;
+ netdev_lockdep_set_classes(dev);
     ...>
 }
