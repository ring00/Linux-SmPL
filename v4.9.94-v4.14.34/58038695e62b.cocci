//# pattern-5, witnesses: 2
@@
expression V0;
identifier dev;
identifier extack;
identifier fd;
identifier flags;
typedef u32;
@@
 int dev_change_xdp_fd(struct net_device * dev, struct netlink_ext_ack * extack, int fd, u32 flags)
 {
     <...
- __dev_xdp_attached(dev, V0)
+ __dev_xdp_attached(dev, V0, NULL)
     ...>
 }
