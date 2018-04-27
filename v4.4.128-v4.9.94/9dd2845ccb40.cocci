//# pattern-6, witnesses: 2
@@
identifier fn;
identifier osdc;
identifier req;
@@
 void fn(struct ceph_osd_client * osdc, struct ceph_osd_request * req)
 {
     <...
- maybe_move_osd_to_lru(osdc, req->r_osd)
+ maybe_move_osd_to_lru(req->r_osd)
     ...>
 }
