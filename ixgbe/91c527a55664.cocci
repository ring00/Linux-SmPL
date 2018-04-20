//# pattern-10, witnesses: 5
@@
expression BO0;
@@
- if (BO0) {
- return -EINVAL;
- }
//# pattern-2, witnesses: 3
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_change_mtu = fn,
};
@@
expression BO2;
expression E0;
expression E3;
expression IL1;
identifier netdev;
identifier new_mtu;
identifier r0.fn;
@@
 int fn(struct net_device * netdev, int new_mtu)
 {
     <...
- int  = E0 + IL1 + 4;
- if (BO2) {
- return E3;
- }
     ...>
 }
//# pattern-9, witnesses: 2
@@
expression F1;
identifier s;
@@
 const struct net_device_ops s = {
-    .ndo_change_mtu = F1,
 };
