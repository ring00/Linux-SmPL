//# pattern-3, witnesses: 2
@@
identifier fn;
identifier ldev;
@@
 void fn(struct net_device * ldev)
 {
     <...
- ldev->mtu = IPV6_MIN_MTU;
     ...>
 }
//# pattern-4, witnesses: 2
@@
identifier fn;
identifier ldev;
@@
 void fn(struct net_device * ldev)
 {
     <...
- ldev->type = ARPHRD_6LOWPAN;
     ...>
 }
//# pattern-5, witnesses: 2
@@
identifier fn;
identifier ldev;
@@
 void fn(struct net_device * ldev)
 {
     <...
- ldev->addr_len = 8;
     ...>
 }
