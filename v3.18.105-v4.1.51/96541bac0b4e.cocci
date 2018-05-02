//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier drv;
identifier r0.fn;
@@
- void fn(struct device_driver * drv)
+ void fn(struct mmc_driver * drv)
 {
     <...
- drv->bus = E0
+ drv->drv.bus = E0
     ...>
 }
//# pattern-11, witnesses: 2
@r1@
identifier i, fn;
@@
struct device_driver i = {
    .probe = fn,
};
@@
identifier dev;
identifier r1.fn;
@@
- int fn(struct device * dev)
+ int fn(struct mmc_card * card)
 {
     <...
- struct mmc_card * card = mmc_dev_to_card(dev);
     ...>
 }
//# pattern-15, witnesses: 2
@@
identifier s;
@@
- struct device_driver s = {
+ struct mmc_driver s = {
+    .drv = ,
 };
