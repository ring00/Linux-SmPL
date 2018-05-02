//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct mmc_driver i = {
    .remove = fn,
};
@@
identifier card;
identifier r0.fn;
@@
- void fn(struct mmc_card * card)
+ int fn(struct device * dev)
 {
     ...
+ struct mmc_card * card = mmc_dev_to_card(dev);
+ return 0;
 }
//# pattern-7, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier drv;
identifier r1.fn;
@@
- void fn(struct mmc_driver * drv)
+ void fn(struct device_driver * drv)
 {
     <...
- &drv->drv
+ drv
     ...>
 }
//# pattern-9, witnesses: 2
@r2@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier drv;
identifier r2.fn;
@@
 void fn(struct device_driver * drv)
 {
     <...
- drv->drv.bus = E0
+ drv->bus = E0
     ...>
 }
//# pattern-10, witnesses: 2
@@
identifier s;
@@
- struct mmc_driver s = {
+ struct device_driver s = {
-    .drv = ,
 };
