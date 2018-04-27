//# pattern-1, witnesses: 7
@@
expression E0;
@@
- qdisc_unthrottled(E0);
//# pattern-4, witnesses: 3
@@
expression E0;
expression EC1;
@@
- qdisc_watchdog_schedule_ns(&q->watchdog, E0, EC1)
+ qdisc_watchdog_schedule_ns(&q->watchdog, E0)
