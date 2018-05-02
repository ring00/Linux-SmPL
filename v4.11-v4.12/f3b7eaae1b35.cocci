//# pattern-2, witnesses: 3
@@
expression E0;
@@
- pm_wakeup_hard_event(&E0->dev)
+ pm_wakeup_event(&E0->dev, 0)
//# pattern-11, witnesses: 2
@@
expression EC0;
@@
- trace_suspend_resume(TPS("machine_suspend"), PM_SUSPEND_FREEZE, EC0);
