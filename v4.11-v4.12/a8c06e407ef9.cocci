//# pattern-9, witnesses: 16
@@
expression E0;
@@
- E0->controller
+ E0->sysdev
//# pattern-8, witnesses: 14
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier bus_name;
identifier dev;
identifier driver;
identifier primary_hcd;
@@
- struct usb_hcd * usb_create_shared_hcd(const struct hc_driver * driver, struct device * dev, const char * bus_name, struct usb_hcd * primary_hcd)
+ struct usb_hcd * usb_create_shared_hcd(const struct hc_driver * driver, struct device * dev, const char * bus_name, struct usb_hcd * primary_hcd)
 {
     <...
- struct usb_hcd * hcd = hcd;
- hcd = kzalloc(sizeof(unsigned long) + driver->hcd_priv_size, GFP_KERNEL);
     ...>
 }
//# pattern-6, witnesses: 2
@@
@@
- !bus->controller->dma_mask
+ !is_device_dma_capable(bus->sysdev)
