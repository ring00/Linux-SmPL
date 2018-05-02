//# pattern-3, witnesses: 4
@@
expression list listE0;
@@
- device_run_wake(listE0)
+ device_can_wakeup(listE0)
//# pattern-2, witnesses: 3
@@
expression EC0;
@@
- device_set_run_wake(dev, EC0);
//# pattern-1, witnesses: 2
@@
expression list listE0;
@@
- device_set_run_wake(listE0)
+ device_set_wakeup_capable(listE0)
