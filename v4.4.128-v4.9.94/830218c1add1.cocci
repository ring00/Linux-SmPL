//# pattern-1, witnesses: 2
@@
identifier dev;
identifier gwaddr;
identifier len;
identifier opt;
@@
 int rt6_route_rcv(struct net_device * dev, u8 * opt, int len, const struct in6_addr * gwaddr)
 {
     <...
- dev->ifindex
+ dev
     ...>
 }
//# pattern-5, witnesses: 2
@@
@@
- RT_TABLE_MAIN
+ tb_id
