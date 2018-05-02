//# pattern-6, witnesses: 4
@r0@
identifier i, fn;
@@
struct device_attribute i = {
    .show = fn,
};
@@
expression ME0;
identifier a;
identifier buf;
identifier fbdev;
identifier r0.fn;
@@
 ssize_t fn(struct device * fbdev, struct device_attribute * a, char * buf)
 {
     <...
- struct dlfb_data * dev = fb_info->par;
- return snprintf(buf, PAGE_SIZE, "%u\n", atomic_read(&ME0));
+ struct dlfb_data * dlfb = fb_info->par;
+ return snprintf(buf, PAGE_SIZE, "%u\n", atomic_read(&ME0));
     ...>
 }
//# pattern-89, witnesses: 4
@@
expression E0;
expression IL2;
expression ME1;
@@
- struct dlfb_data * dev = E0;
- atomic_set(&ME1, IL2);
+ struct dlfb_data * dlfb = E0;
+ atomic_set(&ME1, IL2);
//# pattern-13, witnesses: 3
@@
identifier PV0;
identifier PV1;
identifier PV2;
identifier PV3;
@@
- struct dlfb_data * dev = info->par;
- dlfb_handle_damage(dev, PV0->dx, PV1->dy, PV2->width, PV3->height, info->screen_base);
+ struct dlfb_data * dlfb = info->par;
+ dlfb_handle_damage(dlfb, PV0->dx, PV1->dy, PV2->width, PV3->height, info->screen_base);
//# pattern-8, witnesses: 2
@r1@
identifier fn;
expression P0;
@@
kref_put(P0, fn)
@@
expression F0;
expression ME1;
identifier kref;
@@
 void dlfb_free(struct kref * kref)
 {
     <...
- struct dlfb_data * dev = container_of(kref, );
- F0(ME1);
+ struct dlfb_data * dlfb = container_of(kref, );
+ F0(ME1);
     ...>
 }
//# pattern-9, witnesses: 2
@@
expression F0;
@@
- struct dlfb_data * dev = container_of;
- F0(dev);
+ struct dlfb_data * dlfb = container_of;
+ F0(dlfb);
//# pattern-44, witnesses: 2
@@
@@
- struct dlfb_data * dev = info->par;
- if (!atomic_read(&dev->usb_active)) {
- }
+ struct dlfb_data * dlfb = info->par;
+ if (!atomic_read(&dlfb->usb_active)) {
+ }
//# pattern-59, witnesses: 2
@@
expression E1;
expression E2;
expression V0;
@@
- dlfb_setup_modes(dev, V0, E1, E2)
+ dlfb_setup_modes(dlfb, V0, E1, E2)
//# pattern-69, witnesses: 2
@@
expression F0;
@@
- struct dlfb_data * dev = dev;
- dev = kzalloc(sizeof(unsigned long), GFP_KERNEL);
- F0(&dev->kref);
+ struct dlfb_data * dlfb = dlfb;
+ dlfb = kzalloc(sizeof(unsigned long), GFP_KERNEL);
+ F0(&dlfb->kref);
//# pattern-85, witnesses: 2
@@
expression E0;
expression E3;
expression F1;
expression ME2;
@@
- struct dlfb_data * dev = E0->par;
- F1(&ME2, E3);
+ struct dlfb_data * dlfb = E0->par;
+ F1(&ME2, E3);
//# pattern-97, witnesses: 2
@r2@
identifier i, fn;
@@
struct usb_driver i = {
    .disconnect = fn,
};
@@
expression E2;
expression F0;
expression ME1;
identifier interface;
@@
 void dlfb_usb_disconnect(struct usb_interface * interface)
 {
     <...
- struct dlfb_data * dev = dev;
- dev = usb_get_intfdata(interface);
- F0(&ME1, E2);
+ struct dlfb_data * dlfb = dlfb;
+ dlfb = usb_get_intfdata(interface);
+ F0(&ME1, E2);
     ...>
 }
//# pattern-98, witnesses: 2
@r3@
identifier i, fn;
@@
struct usb_driver i = {
    .disconnect = fn,
};
@@
expression E1;
expression ME0;
identifier interface;
@@
 void dlfb_usb_disconnect(struct usb_interface * interface)
 {
     <...
- struct dlfb_data * dev = dev;
- dev = usb_get_intfdata(interface);
- ME0 = E1;
+ struct dlfb_data * dlfb = dlfb;
+ dlfb = usb_get_intfdata(interface);
+ ME0 = E1;
     ...>
 }
//# pattern-105, witnesses: 2
@@
@@
- dlfb_get_urb(dev)
+ dlfb_get_urb(dlfb)
//# pattern-133, witnesses: 2
@@
expression ME1;
expression V0;
identifier info;
identifier pagelist;
@@
 void dlfb_dpy_deferred_io(struct fb_info * info, struct list_head * pagelist)
 {
     <...
- struct dlfb_data * dev = info->par;
- atomic_add(V0, &ME1);
+ struct dlfb_data * dlfb = info->par;
+ atomic_add(V0, &ME1);
     ...>
 }
