//# pattern-2, witnesses: 2
@@
identifier msg;
identifier osdc;
@@
 void handle_reply(struct ceph_osd_client * osdc, struct ceph_msg * msg)
 {
     <...
- req->r_callback(req, msg)
+ req->r_callback(req)
     ...>
 }
//# pattern-7, witnesses: 2
@@
@@
- ceph_aio_complete_req(req, NULL)
+ ceph_aio_complete_req(req)
