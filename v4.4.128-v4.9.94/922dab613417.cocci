//# pattern-3, witnesses: 2
@@
expression ME0;
identifier req;
@@
 void request_init(struct ceph_osd_request * req)
 {
     <...
- INIT_LIST_HEAD(&ME0);
     ...>
 }
//# pattern-6, witnesses: 2
@@
expression E0;
identifier fn;
identifier osd;
@@
 void fn(struct ceph_osd * osd)
 {
     <...
- E0 && list_empty(&osd->o_linger_requests)
+ E0 && RB_EMPTY_ROOT(&osd->o_linger_requests)
     ...>
 }
//# pattern-8, witnesses: 2
@@
expression ME0;
identifier req;
@@
 void request_release_checks(struct ceph_osd_request * req)
 {
     <...
- WARN_ON(!list_empty(&ME0));
     ...>
 }
//# pattern-19, witnesses: 2
@@
@@
- !list_empty(&osd->o_linger_requests)
+ !RB_EMPTY_ROOT
