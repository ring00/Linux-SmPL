//# pattern-3, witnesses: 7
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
identifier r0.fn;
@@
- ssize_t fn(struct device * dev, struct device_attribute * attr, char * buf)
+ ssize_t fn(struct omap_dss_device * dssdev, char * buf)
 {
     <...
- struct omap_dss_device * dssdev = to_dss_device_sysfs(dev);
     ...>
 }
//# pattern-1, witnesses: 6
@r1@
identifier i, fn;
@@
struct device_attribute i = {
    .store = fn,
};
@@
identifier attr;
identifier buf;
identifier dev;
identifier r1.fn;
identifier size;
@@
- ssize_t fn(struct device * dev, struct device_attribute * attr, const char * buf, size_t size)
+ ssize_t fn(struct omap_dss_device * dssdev, const char * buf, size_t size)
 {
     <...
- struct omap_dss_device * dssdev = to_dss_device_sysfs(dev);
     ...>
 }
