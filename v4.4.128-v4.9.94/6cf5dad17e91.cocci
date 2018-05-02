//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier name;
identifier pci_dev;
@@
- struct media_device * media_device_pci_init(struct pci_dev * pci_dev, const char * name)
+ void media_device_pci_init(struct media_device * mdev, struct pci_dev * pci_dev, const char * name)
 {
     <...
- struct media_device * mdev = mdev;
- mdev = kzalloc(sizeof(unsigned long), GFP_KERNEL);
     ...>
 }
//# pattern-8, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier board_name;
identifier driver_name;
identifier udev;
@@
- struct media_device * __media_device_usb_init(struct usb_device * udev, const char * board_name, const char * driver_name)
+ void __media_device_usb_init(struct media_device * mdev, struct usb_device * udev, const char * board_name, const char * driver_name)
 {
     <...
- struct media_device * mdev = mdev;
- mdev = kzalloc(sizeof(unsigned long), GFP_KERNEL);
     ...>
 }
