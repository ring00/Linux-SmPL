//# pattern-1, witnesses: 8
@r0@
identifier i, fn;
@@
struct usb_serial_driver i = {
    .calc_num_ports = fn,
};
@@
identifier r0.fn;
identifier serial;
@@
- int fn(struct usb_serial * serial)
+ int fn(struct usb_serial * serial, struct usb_serial_endpoints * epds)
 { ... }
