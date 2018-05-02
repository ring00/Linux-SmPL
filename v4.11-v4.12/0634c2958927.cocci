//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct device_attribute i = {
    .show = fn,
};
@@
identifier a;
identifier buf;
identifier dev;
@@
 ssize_t modalias_show(struct device * dev, struct device_attribute * a, char * buf)
 {
     <...
- of_device_get_modalias(dev, buf, PAGE_SIZE - 1)
+ of_device_modalias(dev, buf, PAGE_SIZE)
     ...>
 }
//# pattern-3, witnesses: 2
@r1@
identifier i, fn;
@@
struct device_attribute i = {
    .show = fn,
};
@@
expression E0;
expression E1;
identifier attr;
identifier buf;
identifier dev;
@@
 ssize_t modalias_show(struct device * dev, struct device_attribute * attr, char * buf)
 {
     <...
- ssize_t len = of_device_get_modalias(dev, buf, PAGE_SIZE - 2);
- buf[E0] = E1;
     ...>
 }
