//# pattern-4, witnesses: 2
@@
@@
- ceph_oid_set_name(&osd_req->r_base_oid, obj_request->object_name);
+ if (ceph_oid_aprintf(&osd_req->r_base_oid, GFP_NOIO, "%s", obj_request->object_name)) {
+ }
