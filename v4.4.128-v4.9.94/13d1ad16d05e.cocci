//# pattern-4, witnesses: 2
@@
@@
- if (!osd_req) {
- }
+ if (!osd_req) {
+ }
+ if (ceph_osdc_alloc_messages(osd_req, GFP_NOIO)) {
+ }
