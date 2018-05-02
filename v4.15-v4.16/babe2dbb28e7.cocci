//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier addr;
identifier alen;
identifier dev;
@@
- void * device_get_mac_address(struct device * dev, char * addr, int alen)
+ void * device_get_mac_address(struct device * dev, char * addr, int alen)
 {
     <...
- char * res = res;
- res = device_get_mac_addr(dev, "mac-address", addr, alen);
     ...>
 }
