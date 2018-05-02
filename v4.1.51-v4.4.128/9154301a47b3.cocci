//# pattern-1, witnesses: 6
@r0@
identifier i, fn;
@@
struct hid_driver i = {
    .input_configured = fn,
};
@@
identifier hdev;
identifier hidinput;
identifier r0.fn;
@@
- void fn(struct hid_device * hdev, struct hid_input * hidinput)
+ int fn(struct hid_device * hdev, struct hid_input * hidinput)
 {
     ...
+ return 0;
 }
//# pattern-6, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier force;
identifier hid;
@@
 int hidinput_connect(struct hid_device * hid, unsigned int force)
 {
     <...
- if (drv->input_configured) {
- drv->input_configured(hid, hidinput);
- }
+ if (drv->input_configured && drv->input_configured(hid, hidinput)) {
+ }
     ...>
 }
//# pattern-7, witnesses: 2
@r2@
identifier i, fn;
@@
struct hid_driver i = {
    .input_configured = fn,
};
@@
identifier hdev;
identifier hi;
identifier r2.fn;
@@
 int fn(struct hid_device * hdev, struct hid_input * hi)
 {
     <...
- return;
+ return 0;
     ...>
 }
