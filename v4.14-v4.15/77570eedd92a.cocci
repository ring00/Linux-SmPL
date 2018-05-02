//# pattern-5, witnesses: 8
@@
expression E0;
expression E1;
@@
- E0->timer.data = E1;
//# pattern-2, witnesses: 3
@@
expression V0;
@@
- init_timer(&V0->timer)
+ timer_setup(&V0->timer, NULL, 0)
//# pattern-8, witnesses: 2
@@
expression F0;
identifier PV1;
@@
- setup_timer(timer, F0, PV1)
+ timer_setup(timer, F0, 0)
//# pattern-12, witnesses: 2
@@
expression E0;
@@
- init_timer(&E0->timer);
