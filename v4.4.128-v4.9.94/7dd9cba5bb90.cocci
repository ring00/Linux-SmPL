//# pattern-5, witnesses: 2
@@
@@
- usb_lock_device(udev);
+ rc = usb_lock_device_interruptible(udev);
+ if (rc < 0) {
+ return -EINTR;
+ }
//# pattern-6, witnesses: 2
@@
@@
- usb_lock_device(udev);
+ int rc = rc;
+ rc = usb_lock_device_interruptible(udev);
+ if (rc < 0) {
+ return -EINTR;
+ }
