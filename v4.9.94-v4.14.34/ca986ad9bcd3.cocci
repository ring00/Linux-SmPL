//# pattern-2, witnesses: 3
@@
expression E0;
@@
- E0->flags |= WIPHY_FLAG_SUPPORTS_SCHED_SCAN;
+ E0->max_sched_scan_reqs = 1;
//# pattern-10, witnesses: 2
@@
expression E0;
expression E2;
expression EC1;
@@
- E0 | EC1 | WIPHY_FLAG_SUPPORTS_SCHED_SCAN | E2
+ E0 | EC1 | E2
