//# pattern-2, witnesses: 5
@@
expression ME0;
@@
- queue_work(rpciod_workqueue, &ME0)
+ queue_work(xprtiod_workqueue, &ME0)
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- queue_delayed_work(rpciod_workqueue, &transport->connect_worker, E0)
+ queue_delayed_work(xprtiod_workqueue, &transport->connect_worker, E0)
