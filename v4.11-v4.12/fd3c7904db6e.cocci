//# pattern-23, witnesses: 4
@@
expression E0;
expression E1;
@@
- E0 = idr_read_qp(E1.qp_handle, file->ucontext)
+ E0 = uobj_get_obj_read(, E1.qp_handle)
//# pattern-42, witnesses: 4
@@
@@
- put_qp_read(qp)
+ uobj_put_obj_read
//# pattern-3, witnesses: 3
@@
expression E0;
identifier buf;
identifier file;
identifier ib_dev;
identifier in_len;
identifier out_len;
identifier r0.fn;
@@
 ssize_t fn(struct ib_uverbs_file * file, struct ib_device * ib_dev, const char * buf, int in_len, int out_len)
 {
     <...
- E0 = idr_read_cq(cmd.cq_handle, file->ucontext, 0)
+ E0 = uobj_get_obj_read(, cmd.cq_handle)
     ...>
 }
//# pattern-30, witnesses: 3
@@
expression E0;
identifier buf;
identifier file;
identifier ib_dev;
identifier in_len;
identifier out_len;
identifier r1.fn;
@@
 ssize_t fn(struct ib_uverbs_file * file, struct ib_device * ib_dev, const char * buf, int in_len, int out_len)
 {
     <...
- E0 = idr_read_srq(cmd.srq_handle, file->ucontext)
+ E0 = uobj_get_obj_read(, cmd.srq_handle)
     ...>
 }
//# pattern-44, witnesses: 3
@@
@@
- put_srq_read(srq)
+ uobj_put_obj_read
//# pattern-45, witnesses: 3
@@
@@
- put_cq_read(cq)
+ uobj_put_obj_read
//# pattern-12, witnesses: 2
@@
expression E0;
expression E1;
identifier file;
identifier ib_dev;
identifier r2.fn;
identifier ucore;
identifier uhw;
@@
 int fn(struct ib_uverbs_file * file, struct ib_device * ib_dev, struct ib_udata * ucore, struct ib_udata * uhw)
 {
     <...
- E0 = idr_read_wq(E1, file->ucontext)
+ E0 = uobj_get_obj_read(, E1)
     ...>
 }
//# pattern-33, witnesses: 2
@@
expression E0;
identifier buf;
identifier file;
identifier ib_dev;
identifier in_len;
identifier out_len;
identifier r3.fn;
@@
 ssize_t fn(struct ib_uverbs_file * file, struct ib_device * ib_dev, const char * buf, int in_len, int out_len)
 {
     <...
- E0 = idr_write_qp(cmd.qp_handle, file->ucontext)
+ E0 = uobj_get_obj_read(, cmd.qp_handle)
     ...>
 }
//# pattern-37, witnesses: 2
@@
@@
- put_qp_write(qp)
+ uobj_put_obj_read
