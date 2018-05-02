//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct device_attribute i = {
    .show = fn,
};
@@
identifier attr;
identifier buf;
identifier dev;
@@
- ssize_t max_comp_streams_show(struct device * dev, struct device_attribute * attr, char * buf)
+ ssize_t max_comp_streams_show(struct device * dev, struct device_attribute * attr, char * buf)
 {
     <...
- struct zram * zram = dev_to_zram(dev);
- &zram->init_lock;
     ...>
 }
//# pattern-3, witnesses: 2
@@
@@
- zram->max_comp_streams = 1;
//# pattern-5, witnesses: 2
@r1@
identifier i, fn;
@@
struct device_attribute i = {
    .store = fn,
};
@@
expression E0;
identifier attr;
identifier buf;
identifier dev;
identifier len;
@@
 ssize_t max_comp_streams_store(struct device * dev, struct device_attribute * attr, const char * buf, size_t len)
 {
     <...
- struct zram * zram = dev_to_zram(dev);
- E0;
     ...>
 }
