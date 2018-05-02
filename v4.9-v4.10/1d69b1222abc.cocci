//# pattern-2, witnesses: 6
@@
identifier fn;
identifier job;
@@
 int fn(struct fc_bsg_job * job)
 {
     <...
- job->rport
+ fc_bsg_to_rport(job)
     ...>
 }
