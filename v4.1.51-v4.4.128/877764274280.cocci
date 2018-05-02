//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression IL0;
identifier r0.fn;
identifier udev;
@@
 void fn(struct usb_device * udev)
 {
     <...
- udev->usb3_lpm_enabled = IL0;
     ...>
 }
