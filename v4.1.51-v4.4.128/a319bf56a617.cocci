//# pattern-11, witnesses: 5
@@
expression ME0;
@@
- ME0 * HZ
+ ME0
//# pattern-7, witnesses: 2
@@
@@
- req->r_timeout
+ ceph_timeout_jiffies(req->r_timeout)
