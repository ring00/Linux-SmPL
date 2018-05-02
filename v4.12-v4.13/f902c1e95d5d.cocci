//# pattern-1, witnesses: 2
@@
expression E0;
@@
- list_empty(&devnode->fhs) && E0
+ list_empty(&devnode->fhs) && !adap->needs_hpd && E0
//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- kthread_should_stop(listE0)
+ adap->needs_hpd && !adap->is_configured && !adap->is_configuring || kthread_should_stop(listE0)
//# pattern-6, witnesses: 2
@@
@@
- msg->msg[0] != 240
+ adap->needs_hpd || msg->msg[0] != 240
