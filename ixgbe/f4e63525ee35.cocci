//# pattern-2, witnesses: 12
@@
identifier s;
@@
 const struct net_device_ops s = {
 };
//# pattern-5, witnesses: 6
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_bpf = fn,
};
@@
identifier dev;
identifier r0.fn;
identifier xdp;
@@
- int fn(struct net_device * dev, struct netdev_xdp * xdp)
+ int fn(struct net_device * dev, struct netdev_bpf * xdp)
 { ... }
//# pattern-1, witnesses: 2
@@
identifier dev;
identifier fn;
identifier xdp;
@@
 int fn(struct net_device * dev, struct netdev_bpf * xdp)
 { ... }
//# pattern-4, witnesses: 2
@@
identifier dev;
identifier fn;
identifier xdp;
@@
 int fn(struct net_device * dev, struct netdev_bpf * xdp)
 { ... }
//# pattern-7, witnesses: 2
@@
expression E0;
@@
- E0->ndo_xdp
+ E0->ndo_bpf
