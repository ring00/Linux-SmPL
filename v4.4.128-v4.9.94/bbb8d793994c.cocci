//# pattern-1, witnesses: 6
@r0@
identifier i, fn;
@@
struct dsa_switch_driver i = {
    .probe = fn,
};
@@
identifier host_dev;
identifier r0.fn;
identifier sw_addr;
@@
- char * fn(struct device * host_dev, int sw_addr)
+ char * fn(struct device * dsa_dev, struct device * host_dev, int sw_addr)
 { ... }
