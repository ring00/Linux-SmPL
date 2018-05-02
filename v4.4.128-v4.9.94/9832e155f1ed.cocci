//# pattern-13, witnesses: 4
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression ME0;
identifier mdev;
identifier owner;
@@
 int __media_device_register(struct media_device * mdev, struct module * owner)
 {
     <...
- INIT_LIST_HEAD(&ME0);
     ...>
 }
//# pattern-3, witnesses: 2
@@
expression E0;
expression E1;
identifier adap;
identifier fn;
@@
 void fn(struct dvb_usb_adapter * adap)
 {
     <...
- struct media_device * mdev = mdev;
- struct dvb_usb_device * d = E0;
- struct usb_device * udev = d->udev;
- int ret = ret;
- mdev = kzalloc(sizeof(unsigned long), GFP_KERNEL);
- if (!mdev) {
- return;
- }
- mdev->dev = &udev->dev;
- strlcpy(mdev->model, E1->name, sizeof(unsigned long));
- if (udev->serial) {
- strlcpy(mdev->serial, udev->serial, sizeof(unsigned long));
- }
- strcpy(mdev->bus_info, udev->devpath);
- mdev->hw_revision = (udev->descriptor.bcdDevice);
- mdev->driver_version = LINUX_VERSION_CODE;
- ret = media_device_register(mdev);
- if (ret) {
- dev_err(&d->udev->dev, "Couldn't create a media device. Error: %d\n", ret);
- kfree(mdev);
- return;
- }
- dvb_register_media_controller(&adap->dvb_adap, mdev);
- dev_info(&d->udev->dev, "media controller created\n");
+ media_device_register(adap->dvb_adap.mdev);
     ...>
 }
