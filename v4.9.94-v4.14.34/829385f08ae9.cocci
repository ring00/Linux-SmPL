//# pattern-2, witnesses: 3
@@
expression E0;
@@
- E0->msg_timer
+ E0->msg_timer_work
//# pattern-5, witnesses: 2
@@
expression list listE0;
@@
- del_timer(listE0)
+ cancel_delayed_work(listE0)
