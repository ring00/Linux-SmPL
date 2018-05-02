//# pattern-1, witnesses: 6
@@
@@
- to_rpmsg_channel(dev)
+ to_rpmsg_device(dev)
//# pattern-3, witnesses: 2
@@
identifier data;
identifier fn;
identifier len;
identifier priv;
identifier rpdev;
identifier src;
typedef u32;
@@
- void fn(struct rpmsg_channel * rpdev, void * data, int len, void * priv, u32 src)
+ void fn(struct rpmsg_device * rpdev, void * data, int len, void * priv, u32 src)
 { ... }
//# pattern-4, witnesses: 2
@@
@@
- rpmsg_channel_match
+ rpmsg_device_match
//# pattern-6, witnesses: 2
@@
identifier fn;
identifier rpdev;
@@
- void fn(struct rpmsg_channel * rpdev)
+ void fn(struct rpmsg_device * rpdev)
 { ... }
