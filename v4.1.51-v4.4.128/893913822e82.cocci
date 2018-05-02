//# pattern-4, witnesses: 11
@@
expression E0;
@@
- E0->device
+ E0->cldev
//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct mei_cl_driver i = {
    .remove = fn,
};
@@
identifier device;
identifier r0.fn;
@@
- int fn(struct mei_cl_device * device)
+ int fn(struct mei_cl_device * cldev)
 {
     <...
- mei_cl_get_drvdata(device)
+ mei_cl_get_drvdata(cldev)
     ...>
 }
//# pattern-6, witnesses: 2
@r1@
identifier i, fn;
@@
struct mei_cl_driver i = {
    .probe = fn,
};
@@
identifier device;
identifier id;
identifier r1.fn;
@@
- int fn(struct mei_cl_device * device, const struct mei_cl_device_id * id)
+ int fn(struct mei_cl_device * cldev, const struct mei_cl_device_id * id)
 {
     <...
- nfc_mei_phy_alloc(device)
+ nfc_mei_phy_alloc(cldev)
     ...>
 }
