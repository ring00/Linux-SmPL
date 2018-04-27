//# pattern-6, witnesses: 10
@@
expression E0;
identifier dev;
@@
 struct rtable * vrf_rtable_create(struct net_device * dev)
 {
     <...
- rth = dst_alloc(&vrf_dst_ops, dev, 2, DST_OBSOLETE_NONE, DST_HOST | DST_NOPOLICY | DST_NOXFRM);
- if (rth) {
- E0;
- }
+ rth = rt_dst_alloc(dev, 0, RTN_UNICAST, 1, 1, 0);
+ if (rth) {
+ }
     ...>
 }
//# pattern-7, witnesses: 2
@@
expression V0;
@@
- atomic_inc(&V0->dst.__refcnt)
+ dst_hold(&V0->dst)
//# pattern-9, witnesses: 2
@@
expression list listE0;
@@
- vrf_rtable_destroy(listE0)
+ vrf_rtable_release(listE0)
