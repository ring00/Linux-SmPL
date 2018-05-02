//# pattern-2, witnesses: 3
@@
identifier fn;
identifier job;
@@
- int fn(struct fc_bsg_job * job)
+ int fn(struct bsg_job * job)
 { ... }
//# pattern-21, witnesses: 3
@@
identifier fn;
identifier job;
@@
 int fn(struct bsg_job * job)
 { ... }
