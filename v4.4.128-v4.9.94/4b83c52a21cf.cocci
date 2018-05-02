//# pattern-3, witnesses: 2
@r0@
identifier fn;
expression P0, P1, P3;
@@
__rpmsg_create_ept(P0, P1, fn, P3)
@@
identifier data;
identifier len;
identifier priv;
identifier rpdev;
identifier src;
typedef u32;
@@
- void rpmsg_ns_cb(struct rpmsg_device * rpdev, void * data, int len, void * priv, u32 src)
+ int rpmsg_ns_cb(struct rpmsg_device * rpdev, void * data, int len, void * priv, u32 src)
 {
     <...
- return;
+ return -EINVAL;
     ...>
 }
