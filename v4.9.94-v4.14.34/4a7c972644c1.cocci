//# pattern-1, witnesses: 8
@@
expression E0;
@@
- E0->last_rx = jiffies;
//# pattern-3, witnesses: 3
@@
@@
- dev->last_rx
+ sky2->last_rx
//# pattern-6, witnesses: 3
@@
@@
- pr_info(, netdev->name, netdev->state, dev_trans_start(netdev))
+ pr_info(, netdev->name, netdev->state)
//# pattern-5, witnesses: 2
@@
@@
- dev->last_rx
+ lp->last_rx_time
