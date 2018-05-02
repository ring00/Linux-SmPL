//# pattern-1, witnesses: 2
@@
@@
- kref_put(&job->kref, bsg_destroy_job)
+ bsg_job_put(job)
