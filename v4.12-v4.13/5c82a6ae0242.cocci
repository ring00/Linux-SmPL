//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier dev;
identifier name;
identifier ops;
identifier owner;
@@
 struct rtc_device * rtc_device_register(const char * name, struct device * dev, const struct rtc_class_ops * ops, struct module * owner)
 {
     <...
- rtc->name
+ name
     ...>
 }
