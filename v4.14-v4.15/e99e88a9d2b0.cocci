//# pattern-1, witnesses: 10
@@
expression E2;
expression F1;
expression ME0;
@@
- setup_timer(&ME0, F1, E2)
+ timer_setup(&ME0, F1, 0)
//# pattern-10, witnesses: 2
@@
expression F1;
expression V0;
@@
- setup_timer(&V0, F1, 0)
+ timer_setup(&V0, F1, 0)
