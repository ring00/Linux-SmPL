//# pattern-1, witnesses: 4
@@
identifier fn;
identifier ibdev;
identifier port;
identifier props;
typedef u8;
@@
 int fn(struct ib_device * ibdev, u8 port, struct ib_port_attr * props)
 {
     <...
- if (netdev->mtu >= 4096) {
- props->active_mtu = IB_MTU_4096;
- }
+ props->active_mtu = ib_mtu_int_to_enum(netdev->mtu);
     ...>
 }
