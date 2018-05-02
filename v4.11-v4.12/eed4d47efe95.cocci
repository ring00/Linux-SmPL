//# pattern-1, witnesses: 3
@@
expression E0;
@@
- pm_wakeup_event(&E0->dev, 0)
+ pm_wakeup_hard_event(&E0->dev)
