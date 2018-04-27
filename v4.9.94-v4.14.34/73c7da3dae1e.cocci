//# pattern-7, witnesses: 4
@@
@@
- !wdev->nan_started
+ !wdev_running(wdev)
//# pattern-1, witnesses: 2
@@
@@
- wdev->p2p_started
+ wdev_running(wdev)
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- E0->nan_started
+ E0->is_running
//# pattern-8, witnesses: 2
@@
expression E0;
@@
- E0->p2p_started
+ E0->is_running
