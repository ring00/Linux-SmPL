//# pattern-1, witnesses: 6
@r0@
identifier i, fn;
@@
struct usb_gadget_ops i = {
    .udc_stop = fn,
};
@@
identifier driver;
identifier g;
identifier r0.fn;
@@
- int fn(struct usb_gadget * g, struct usb_gadget_driver * driver)
+ int fn(struct usb_gadget * g)
 { ... }
//# pattern-2, witnesses: 4
@r1@
identifier i, fn;
@@
struct usb_gadget_ops i = {
    .udc_stop = fn,
};
@@
identifier g;
identifier r1.fn;
@@
 int fn(struct usb_gadget * g)
 { ... }
