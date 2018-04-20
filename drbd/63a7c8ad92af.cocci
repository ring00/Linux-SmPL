//# pattern-1, witnesses: 2
@@
identifier device;
identifier fn;
@@
 void fn(struct drbd_device * device)
 {
     <...
- drbd_free_ldev(device->ldev)
+ drbd_backing_dev_free(device, device->ldev)
     ...>
 }
