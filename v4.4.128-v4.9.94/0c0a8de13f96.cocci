//# pattern-3, witnesses: 2
@@
identifier monc;
identifier req;
identifier tid;
typedef u64;
@@
 int __do_generic_request(struct ceph_mon_client * monc, u64 tid, struct ceph_mon_generic_request * req)
 {
     <...
- monc->num_generic_requests;
     ...>
 }
