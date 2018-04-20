//# pattern-1, witnesses: 8
@@
expression E0;
@@
- E0->trans_start
+ dev_trans_start(E0)
//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_tx_timeout = fn,
};
@@
expression E0;
identifier dev;
identifier r0.fn;
@@
 void fn(struct net_device * dev)
 {
     <...
- E0 - dev->trans_start
+ E0 - dev_trans_start(dev)
     ...>
 }
