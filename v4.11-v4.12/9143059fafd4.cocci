//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct hid_ll_driver i = {
    .start = fn,
};
@@
identifier hid;
identifier r0.fn;
@@
 int fn(struct hid_device * hid)
 {
     <...
- if (!hid->quirks & HID_QUIRK_NO_INIT_REPORTS) {
- hid;
- }
     ...>
 }
