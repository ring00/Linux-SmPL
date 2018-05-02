//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct component_ops i = {
    .bind = fn,
};
@@
identifier data;
identifier dev;
identifier master;
identifier r0.fn;
@@
 int fn(struct device * dev, struct device * master, void * data)
 {
     <...
- dw_hdmi_bind(dev, master, data, encoder, iores, irq, plat_data)
+ dw_hdmi_bind(dev, encoder, iores, irq, plat_data)
     ...>
 }
//# pattern-4, witnesses: 2
@r1@
identifier i, fn;
@@
struct component_ops i = {
    .unbind = fn,
};
@@
identifier data;
identifier dev;
identifier master;
identifier r1.fn;
@@
 void fn(struct device * dev, struct device * master, void * data)
 {
     <...
- dw_hdmi_unbind(dev, master, data)
+ dw_hdmi_unbind(dev)
     ...>
 }
