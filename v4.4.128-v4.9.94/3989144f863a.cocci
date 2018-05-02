//# pattern-3, witnesses: 28
@@
expression list listE0;
@@
- queue_kthread_work(listE0)
+ kthread_queue_work(listE0)
//# pattern-4, witnesses: 13
@@
expression F1;
expression ME0;
@@
- init_kthread_work(&ME0, F1)
+ kthread_init_work(&ME0, F1)
//# pattern-2, witnesses: 10
@@
expression E0;
@@
- init_kthread_worker(E0)
+ kthread_init_worker(E0)
//# pattern-1, witnesses: 9
@@
expression list listE0;
@@
- flush_kthread_worker(listE0)
+ kthread_flush_worker(listE0)
//# pattern-5, witnesses: 4
@@
expression list listE0;
@@
- flush_kthread_work(listE0)
+ kthread_flush_work(listE0)
